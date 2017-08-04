**********************
App release procedures
**********************

**Goal**: provide simple and short guide line document on code delivery procedure

**Target**: Document targets end-services only (EBN, DMON)

**Mantra**: developer is responsible for code delivery and reliability

Delivery procedure phases:

    #. `Creating Pull Request`_
    #. `Code Review`_
    #. `Deployment`_
    #. `Delivery Verification`_
    #. `Rolling Back`_


Creating Pull Request
=====================

PR description should provide all necessary information to make code review and
delivery easy, and that includes:

    * **Reviewers**. Assign to all development team members.
    * **Original issue**. Link original issue and all supporting information.
    * **Downsides**. Describe solution downsides or share concerns about it.
    * **Roll-out plan**. Specify all resources that will be modified. Describe step-by-step how to deploy.
    * **Deployment risks**. Describe potential risks of deployment.
    * **Rollback strategy**. Develop plan how to retract release and describe it step-by-step.
    * **Deployment assistants**. Mention ops persons, so they could consider deployment risks as well.

Use provided `Templates`_ for creating PR description.

[WIP] PR
--------

Creating "Work In Progress" PR is a common way to get an advice or early
feedback on your code. Put `[WIP]` at the beginning of PR title and
"**Work In Progress, do not merge**" on top of the description; specify
original issue, questions and concerns; mention people. If PR involves
configuration changes (Heroku env, add-ons) then create a rollout plan and
rollback strategy.


Code Review
===========

PR author is responsible for making sure that PR is getting enough attention.
If there is no feedback on PR:
    * for 3-4 hours - ping people in the development group chat,
    * for 6-7 hours - write PM,
    * for one day or more - discuss it on the stand-up meeting as a blocker.

When reviewing code consider questions like:

    * Are there any obvious logic errors in the code?
    * Looking at the requirements, are all cases fully implemented?
    * Are the new automated tests sufficient for the new code?
      Do existing automated tests need to be rewritten to account
      for changes in the code?
    * Does the new code conform to existing style guidelines?

Try to make sure that all necessary changes are made, including:

    * user interface changes
    * application code changes
    * documentation updates
    * help text revisions
    * database schema revisions
    * unit test additions
    * configuration file updates
    * build script changes

Code review is a communication process that aims to increase team
synchronization and expertise as a whole. Don't be afraid to ask a question
during the review or share ideas. On the other hand, PR author is not obligated
to accept all ideas or recommendations, by the only exception of
"change request". Use `# ???:` and `# !!!:` code comment tags to specify places
in the code for which you need advice.


Deployment
==========

**Deployment window**: between 8 and 17 CEST

Before starting deployment consider if there are no additional pre-deployment
steps that should be taken. Deployment starts from merging PR into `master`
branch. Only PR author merges code and does all deployment. In the case of
need, anyone from development team should be able to deploy by following
roll-out plan provided in PR description.

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
    * Making sure that deployment assistant will be able to help you, in case you encounter problems.


Delivery Verification
=====================

Monitor logs. During verification keep an eye on logs in real time. Use
`papertrail service <https://elements.heroku.com/addons/papertrail>`_
or `heroku logs --source app --tail` command.

Verify Implementation. Test manually couple of user stories of delivered issue.

Smoke Test. Test manually the most important service functionality.


Rolling Back
============

Rollback changes on Heroku app is relatively simple:

.. code-block:: bash

    $ heroku releases
    Rel   Change                          By                    When
    ----  ----------------------          ----------            ----------
    v52   Config add AWS_S3_KEY           jim@example.com       5 minutes ago
    v51   Deploy de63889                  stephan@example.com   7 minutes ago

    $ heroku rollback
    # or
    $ heroku rollback v51

Same can be achieved via *Heroku UI*.

DB migrations can be reverted via `alembic downgrade <http://alembic.zzzcomputing.com/en/latest/tutorial.html#downgrading>`_,
but consider this option only for simple cases. For complex and long running
migrations consider a creation of rollback database and promotion it to
primary as a revert step.

Rolling back postgres is a bit harder because it requires some preparations:

  1. Before deploying create a rollback database:

  .. code-block::

        $ heroku addons:create heroku-postgresql:standard-0 --rollback HEROKU_POSTGRESQL_YELLOW --to '2013-10-21 15:52+00' --app sushi

  2. Promote the rollback as the primary database:

  .. code-block::

        heroku pg:promote HEROKU_POSTGRESQL_SILVER --app sushi

For more detail visit heroku devcenter:

    * https://devcenter.heroku.com/articles/heroku-postgres-rollback
    * https://devcenter.heroku.com/articles/releases#rollback

TODO: add some hints on how to rollback for other services that we use


Readings
========

    * https://www.atlassian.com/agile/code-reviews
    * http://www.plutora.com/blog/release-management-best-practices
    * https://www.python.org/dev/peps/pep-0350/#mnemonics
    * https://blog.heroku.com/releases-and-rollbacks
    * https://www.red-gate.com/simple-talk/dotnet/net-framework/the-zen-of-code-reviews-best-practices/


**********
Templates
**********

Basic template:
===============

.. code-block:: rst

    Solution
    --------

    **Original issue and supporting materials**:
    **Downsides**:

    Roll-out plan
    -------------

    **Deployment risks**:
    **Deployment assistants**:
    **Backing services related changes**:
    **Backuping steps**:
    **Deployment steps**:
      1. [ ] XXX

    Verification plan
    -----------------

    Rollback strategy
    -----------------


Example 1, simple:
===================

.. code-block:: rst

    Solution
    ---------

    **Original issue and supporting materials**: #3 increase navbar width
    **Downsides**: may impact readability on devices with small resolution

    Roll-out plan
    -------------

    **Deployment risks**: None
    **Deployment assistants**: None
    **Backing services related changes**: None
    **Backuping steps**: None

    **Deployment steps**:

      1. [ ] Merge branch into master
      2. [ ] Click 'deploy' button on heroku web ui
      3. [ ] Purge cache
      4. [ ] Verify deployment

    Verification plan
    ------------------

      1. [ ] check if navbar width have been increased
      2. [ ] check some number of the pages on the site to ensure that no other styles were affected

    Rollback strategy
    -----------------
    Rollback web worker to previous revision: `heroku rollback vXX`

Example 2, db migration:
=========================

.. code-block:: rst

    Solution
    ---------

    **Original issue and supporting materials**:
      * #3 remove `username` field, use `email` instead of `username`

    **Downsides**:
      * users profile won't be viewable by `username` - will break links
      * users emails will be exposed
      * authentication policy change - users no longer will be able to log in by `username`

    Roll-out plan
    -------------

    **Deployment risks**:
      * long running DB migration
      * complex DB migration

    **Deployment assistants**: dz0ny I will need your assistance for DB migration

    **Backing services related changes**:
      * postgres:
        * removing `username` field form `mypackage.models.User` model
      * environment variables:
        * update `MYVAR` variable

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
      7. [ ] Verify deployment
      8. [ ] After some time destroy DB rollback:
         `heroku addons:destroy HEROKU_POSTGRESQL_YELLOW --app sushi`

    Verification plan
    -----------------
      1. [ ] Implementation verification: test production against original issue user stories
      2. [ ] Smoke Testing: click through user related pages

    Rollback strategy.
    ------------------
     1 [ ] Rollback `MYVAR` variable value
       `heroku config:set MYVAR=$(< MYVAR.old)`
     2 [ ] Rollback web worker to previous revision
       `heroku rollback vXX`
     3 [ ] Promote DB rollback as the primary database
       `heroku pg:promote HEROKU_POSTGRESQL_SILVER --app sushi`
