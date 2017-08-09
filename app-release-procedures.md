# App release procedures

Document provides a simple and short guide line on a delivery procedure.

**Mantra**: developer is responsible for code delivery and reliability

Delivery procedure phases:

1. [Creating Pull Request](#Creating-Pull-Request)
2. [Code Review](#Code-Review)
3. [Deployment](#Deployment)
4. [Delivery Verification](#Delivery-Verification)
5. [Rolling Back](#Rolling-Back)

## <a name="Creating-Pull-Request"></a>Creating Pull Request

PR description should provide all necessary information to make code review and
delivery easy, and that includes:

* **Reviewers**. Assign to all development team members.
* **Original issue**. Link original issue and all supporting information.
* **Downsides**. Describe solution downsides or share concerns about it.
* **Roll-out plan**. Specify all resources that will be modified.
  Describe step-by-step how to deploy.
* **Deployment risks**. Describe potential risks of deployment.
* **Rollback strategy**. Develop a strategy how to retract release
  and describe it step-by-step.
* **Deployment assistants**. Mention ops persons, so they could
  consider deployment risks as well.

Use provided [Templates](#Templates) for creating PR description.

### [WIP] PR

Creating "Work In Progress" PR is a common way to get an advice or early
feedback on your code. Put `[WIP]` at the beginning of PR title and
"**Work In Progress, do not merge**" on top of the description; specify
original issue, questions and concerns; mention people. If PR involves
configuration changes (Heroku env, add-ons) then create a rollout plan and
rollback strategy.  Use `# ???:` and `# !!!:` code comment tags to specify
places in the code for which you need advice.

## <a name="Code-Review"></a>Code Review

PR author is responsible for making sure that PR is getting enough attention.
If there is no feedback on PR:
* for 3-4 hours - ping people in the development group chat,
* for 6-7 hours - write PM,
* for one day or more - discuss it on the stand-up meeting as a blocker.

As a PR author, you are not obligated to accept all ideas or recommendations
provided by reviewers, with the only exception of "change request".
Schedule a call with developer who has requested a change to speed up a
review process.

## <a name="Deployment"></a>Deployment

**Deployment window**: between 8 and 17 CEST

Deployment starts from merging PR into `master` branch. Only PR author
merges code and does all deployment.

PR can be merged into `master` only if it is approved by at least a half
of the leading project developers and there are no change requests.

Projects leading developers:

* pyramid_bimt - zupo, dz0ny, karantan
* DMON - zupo, dz0ny, karantan
* EBN - zupo, dz0ny, karantan

Ops people:

* dz0ny
* gurvankervern

Before deploying make sure that you took care of:

* Creating backups of backing services (DB storage, ...)
* Making basic preparations for rolling back
* Making sure that deployment assistant will be able to help you,
  in case you encounter problems.

## <a name="Delivery-Verification"></a>Delivery Verification

Monitor logs. During verification keep an eye on logs in real time. Use
`papertrail service <https://elements.heroku.com/addons/papertrail>`_
or `heroku logs -a app --tail` command.

Verify Implementation. Test manually couple of user stories of delivered issue.

Smoke Test. Test manually the most important service functionality.

## <a name="Rolling-Back"></a>Rolling Back

Rollback changes on Heroku app is relatively simple:

```bash
$ heroku releases
Rel   Change                          By                    When
----  ----------------------          ----------            ----------
v52   Config add AWS_S3_KEY           jim@example.com       5 minutes ago
v51   Deploy de63889                  stephan@example.com   7 minutes ago

$ heroku rollback
# or
$ heroku rollback v51
```

Same can be achieved via *Heroku UI*.

DB migrations can be reverted via [alembic downgrade](http://alembic.zzzcomputing.com/en/latest/tutorial.html#downgrading),
but use this option only for simple cases. For complex and long running
migrations consider a creation of rollback database before deployment:

```bash
$ heroku addons:create heroku-postgresql:standard-0 --rollback HEROKU_POSTGRESQL_YELLOW --to '2013-10-21 15:52+00' --app sushi
```

and promotion it to the primary DB as a revert step:

```bash
heroku pg:promote HEROKU_POSTGRESQL_SILVER --app sushi
```

For more details visit heroku devcenter:

* https://devcenter.heroku.com/articles/heroku-postgres-rollback
* https://devcenter.heroku.com/articles/releases#rollback
* https://blog.heroku.com/releases-and-rollbacks


# <a name="Templates"></a>Templates

## Basic template:

```Markdown
## Solution
**Original issue and supporting materials**:
**Downsides**:

## Roll-out plan
**Deployment risks**:
**Deployment assistants**:
**Backing services related changes**:
**Backuping steps**:
**Deployment steps**:
  1. [ ] XXX

## Verification plan

## Rollback strategy
```

## Example 1, simple:

```Markdown
## Solution
**Original issue and supporting materials**: #3 increase navbar width
**Downsides**: solution may impact readability on devices with small resolution

## Roll-out plan
**Deployment risks**: None
**Deployment assistants**: None
**Backing services related changes**: None
**Backuping steps**: None
**Deployment steps**:
  1. [ ] Merge PR into master

## Verification plan
  1. [ ] Monitor papertrail and getsentry
  2. [ ] check if navbar width has been increased
  3. [ ] check some number of the pages on the site to ensure that no other styles were affected

## Rollback strategy
If all went terribly wrong, outside of normal operations, to undo that you can either:
  * Rollback release to previous revision: `heroku rollback vXX`, or
  * make a revert commit and redeploy.
```

## Example 2, complex DB migration:

```Markdown
## Solution

**Original issue and supporting materials**:
  * #3 remove `username` field, use `email` instead of `username`

**Downsides**:
  * users profile won't be viewable by `username` - will break links
  * users emails will be exposed
  * authentication policy change - users no longer will be able to log in by `username`

## Roll-out plan

**Deployment risks**:
  * complex DB migration

**Deployment assistants**: dz0ny I will need your assistance for DB migration

**Backing services related changes**:
  * postgres:
    * removing `username` field form `mypackage.models.User` model
  * environment variables:
    * updating `MYVAR` variable

**Backuping steps**:
  1. [ ] Create production DB rollback:
     `heroku addons:create heroku-postgresql:standard-0 --rollback HEROKU_POSTGRESQL_YELLOW --to '2013-10-21 15:52+00' --app sushi`
  2. [ ] Backup `MYVAR` variable value
     `heroku config:get MYVAR > MYVAR.old`

**Deployment steps**:
  1. [ ] Notify end users about this changes
  2. [ ] Merge PR into master
  3. [ ] Set application into maintenance mode:
     `heroku maintenance:on`
  4. [ ] Deploy app new release, it may take up to 40 minutes because of complex migration
  6. [ ] Disable maintenance mode:
    `heroku maintenance:off`
  7. [ ] After some time destroy DB rollback:
     `heroku addons:destroy HEROKU_POSTGRESQL_YELLOW --app sushi`

## Verification plan
  1. [ ] Monitor papertrail and getsentry
  2. [ ] Implementation verification: test production against original issue user stories
  3. [ ] Smoke Testing: click through user related pages

## Rollback strategy.

  1. [ ] Rollback `MYVAR` variable value
    `heroku config:set MYVAR=$(< MYVAR.old)`
  2. [ ] Rollback web worker to previous revision
    `heroku rollback vXX`
  3. [ ] Promote DB rollback as the primary database
    `heroku pg:promote HEROKU_POSTGRESQL_SILVER --app sushi`
```
