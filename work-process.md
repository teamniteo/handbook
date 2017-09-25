
# Work Process

Our work process is based on [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)), but modified slightly to apply better to our specific needs:

 * we don't do customer projects, so we are our own Product Owners,
 * we currently use GitHub and ZenHub for sprint management,
 * we work asynchronously, so we try to keep scheduled meetings to the bare minimum.

Undefined issues are created in various repositories. Support issues, being reactionary, stay in project-related repositories and are not included in sprints. When undefined issues in various repositories are to be moved into a sprint, User Story needs to be created for that issue with well defined Acceptance Criteria and Definition of Done. This can be done by the author of the issue, Scrum Master or Project Owner. Sprint is managed from the [Operations repository](https://github.com/niteoweb/operations/issues).

## How to create a User Story

- In Operations repository when you open an issue, it has a template that helps you define the User Story.
- User Story in this step must be moved into `Backlog` pipeline in ZenHub.
- Various labels are added (see Issue Labels section).
- The Scrum Master and Product Owner verify if the User Story is well defined.
  * If it is not they assign people from whom they want to receive feedback for better definition of the User Story.
  * Once these people post their feedback, they unassign themselves from the User Story.
- Once the Scrum Master and Product Owner agree that the User Story is well defined, they add ``✋ [vote]`` prefix to the title of the User Story. At that point, Scrum Master and/or Product Owner assign people from whom they want to receive User Story Points estimation. With this, online poker planning begins.
- At the end of the online poker planning, Story Points are added to the User Story.
- The User Story is now prepared to be moved to the top of the User Story Pyramid stack.

Important:

* you are only assigned to a ticket when you need to do something: give feedback, vote on Story Points or are the champion working on the User Story
* unassign yourself when you have done the above task

## Writing User Stories

When you open a new issue in Operations repository, a template will guide you through the process.

Things to be written in the User Story:

**User Story**

"As a ..., I want ..., so that ..."

**Description**

Write in as much detail as possible, add mockups, previous discussion, etc.

**Definition of Done**

Only remove what is not necessary.

* 100% test coverage.
* Write/Update tech docs: are there any technical docs that need to be written or updated?
* Write/Update support docs: notify support and they will go through the steps of the User Story and write or update the support docs.
* Write/Update Help Center article: notify support and they will go through the steps of the User Story and write or update the Help Center.
* Write/Update Intra/Handbook docs: notify operations and they will go through the steps of the User Story and write or update Handbook or Intra.
* Deployed.

**Acceptance Criteria**

Activities that need to be performed so this user story can be moved to `Done`. Links to PR, tested and working feature, notified support, etc.


## Story Point Estimation

[Story Point](https://agilefaq.wordpress.com/2007/11/13/what-is-a-story-point/) is an arbitrary measure used by Scrum teams to indicate the effort required to implement a User Story. One full time member on sprint should be able to do 10 Story Points. For labeling User Story estimates, we use [ZenHub Estimates](https://www.zenhub.com/blog/software-estimates/).

In the "Vote" step (the User Stories that have ``✋ [vote]`` prefix), Scrum Master assigns the User Story to people from whom s/he wants to receive Story Point estimations. Once these people post their story point estimation, they unassign themselves from the User Story. The Scrum Master then adds the agreed numbered Story Point label to the title, removes the ``✋ [vote]`` prefix and moves the User Story to the top of the pipeline. This User Story can now be added to the next sprint.


## Pull Requests and Commits

While working on User Stories we often need to change code or text that we keep in GitHub. These changes are done with [git commits](https://help.github.com/articles/github-glossary/#commit) which are presented to others for reviewal with [Pull Requests](https://help.github.com/articles/about-pull-requests/).

To make sure that your commits and your Pull Requests contain everything for a successful review, follow the conventions below:

### Git commit

A single commit contains only a single "unit of work". For example, if you are adding a new section to this Handbook, but then notice a typo in some other section, the typo should be in a separate commit.

The commit message should look like this:

> Short, imperative summary of changes, up to 72 chars
>
> More detailed explanatory text. Wrap it to 72 characters.
> The blank line separating the summary from the body is critical;
> tools like GitHub can get confused if you omit it.
>
> In big repos, you can use a `[tag]` prefix in the summary, if you
> wish.
>
> The summary is all about "What does this commit do?" while the body is
> "Why does it do this?" and "Why was this approach chosen over others?"
>
> Further paragraphs come after blank lines.
>
> It is critical that you explain *why* you did the change. Don't state
> the obvious "File updated", "Text removed". Imagine you are reading
> this message after two years; how would you explain your future self
> the reason for this change?
>
>   - Bullet points are okay, too
>
>   * Typically a hyphen or asterisk is used for the bullet,
>     preceded by a single space, with blank lines in
>     between.
>
> At the bottom of the commit message, reference the Issue(s) to which
> this commit belongs, in the format below. If referencing an Issue in the
> repo that this commit is in, it's fine to just use the issue number.
# Otherwise, use the long format with organization/repo prefix.
>
> Refs #123.
> Refs niteoweb/operations#123.

Bonus karma points for reading (this detailed essay about good commits)[https://chris.beams.io/posts/git-commit/].

A few examples of excellent commits:
 * TODO
 * TODO
 * TODO


### Pull Request

When your commit is ready to be applied to code/text inside GitHub, you need to present it with a Pull Request.
Similarly to commits, a Pull Request should only include commits on a single topic. For example, if you are adding a new section to this Handbook, but then notice that some other section is also missing, that second section should be in a separate Pull Request.

That said, the typo from above, which comes in its own commit, can be added to your Pull Request. In other words, a Pull Request contains one "main" commit where things happen and up to a few "trivial cleanup" commits, such as typo fixes.

When you hit the `Create pull request` button, put on your reviewer hat and double-check your changes via GitHub Web UI; it uses different color schemes than your local editor and you might catch problems you did not see when looking at your changes in your editor.

Similarly to commits, Pull Requests should look like this:

> Short, up to 72 characters summary of changes
>
> The beef of the Pull Request can be copied over from your "main" commit.
> However, remember to also include description of any cleanup that you have
> done in additional "trivial cleanup" commits.
>
> Like with commit messages, remember to reference the Issue to which the
> Pull Request belongs.
>
> Refs #123.
> Refs niteoweb/operations#123.

A few examples of excellent Pull Requests:
 * TODO
 * TODO
 * TODO

In repositories where deployment involves database migrations and build verifications, we use a
`PULL_REQUEST.md` template to provide delivery verification steps.


## Urgent Production Fixes

If we need to fix an urgent bug, we use the Scrum Priority Lane approach: the User Story gets written and then if the Product Owner decides it really is urgent, the User Story is added to the top of WIP column and labeled with [Priority Lane](#label_priority_lane) so that everyone knows it is an exceptional and urgent issue and the whole team needs to focus on getting it to column Done ASAP.


## Ongoing Tasks

Sometimes the result of a User Story is an agreement that we should do a certain task periodically, over a longer period of time. Such tasks are created in whichever repo is the most appropriate and labeled with [Ongoing](#label_ongoing) label.


## Issue Labels

Descriptive labels:

 * <a name="label_feature"></a>**Feature**: a user-facing or support-facing improvement, addition
 * <a name="label_cleanup"></a>**Cleanup**: something that increases our velocity
 * <a name="label_bug"></a>**Bug**: a user-facing or support-facing annoyance
 * <a name="label_ongoing"></a>**Ongoing**: long-running tasks, are not in sprints, see [Ongoing Tasks](#ongoing-tasks)
 * <a name="label_sanity_check"></a>**Sanity Check**: Results of automatic checks of production data, more on TODO.
 * <a name="label_operations"></a>**Operations**: operations related task, such as adding and improving internal docs, processes, etc.
 * <a name="label_support"></a>**Support**: user-facing maintenance work, not included in sprints, such as fixing subscription problems, resetting passwords, re-enabling accounts, etc.
 * <a name="label_people"></a>**People**: internally-facing maintenance work, not included in sprints, such as hiring, onboarding, etc.

Scrum labels:

* <a name="label_priority_lane"></a>**Priority Lane**: User Stories injected into the current sprint due to urgency
* <a name="label_retrospective"></a>**Retrospective**: issues that describe the sprint retrospective

## Sprint Retrospective

After each sprint, we do a retrospective. We think about:

* What went well during the sprint?
* What went wrong during the sprint?
* What could we do differently to improve?
* Other comments.

We also add a note on how many Story Points we assigned, how many were done and the distribution between the departments and types of User Stories.


## Scrum

Sprint length: two weeks.

Story Points commitment: 10 for each full-time member on the sprint and at least 10 for bugfixes and cleanup.

User Stories with the highest story points are assigned and started first. That way simpler User Stories without champions can be worked on in the last days of the sprint by anyone who finished their own early.

User Stories that are dependent on each other should be merged into one bigger user story. This kind of user stories can have 2 champions.

Support tasks take priority over sprint for support and DevOps team.

For each sprint, a new milestone is created with name `Sprint #X` where `X` is the number of the sprint (e.g. `Sprint #4`). On SCRUM sprint planning each User Story that is added to the planning sprint must be also added to the new milestone. With this ZenHub will automatically generate Burndown chart and we avoid having an additional label (`Sprint #X` label).


### Schedule

Our sprints start on a Wednesday 10am CEST with the [Sprint Planning](https://en.wikipedia.org/wiki/Scrum_(software_development)#Sprint_planning) meeting. They end on the Tuesday two weeks later with [Sprint Review and Sprint Retrospective](https://en.wikipedia.org/wiki/Scrum_(software_development)#Sprint_review_and_retrospective) meetings held at 10am CEST. The last Monday morning of the Sprint everyone should open up the Kanban Board and ask themselves: "How can I help close whatever is still opened?". Repeat the same after lunch and on Tuesday morning.

On the Wednesday in the middle of the sprint we hold the <a name="product_backlog_refinement_meeting"></a>[Product Backlog Refinement](https://en.wikipedia.org/wiki/Scrum_(software_development)#Backlog_refinement) meeting at 10am CEST.

All other days we hold the [Daily Standup](https://en.wikipedia.org/wiki/Scrum_(software_development)#Daily_scrum) meeting at 10am CEST.


### Scrum on GitHub

Some of ideas are taken from https://colloq.io/blog/the-tools-we-use-to-stay-afloat.

Our Kanban Board is at https://github.com/niteoweb/operations/projects/1. By clicking on the `Show Menu` you get an additional sidebar that displays the main information about the sprint, such as the **Sprint Goal**, our capacity for the sprint, committed story points and the **Burndown Chart**.

GitHub checkboxes are often utilized in creating mini-tasks for User Stories. Since there is no history on who clicked on what checkbox and when, always add a comment about the change made everytime a checkbox is ticked.


### Team Capacity

To have a quick overview of who is available to work in the current sprint we use the following rule:

 * people who are away are not included in the sprint
 * people who are swamped with maintenance, support and ongoing work are not included in the sprint so they can focus on their work
 * people who can commit about half of their time to the sprint work have a "single finger" icon
 * people who can commit most of their time to the sprint work have a "double fingers" icon


### Scrum Recommendations

After issue/user story/pull request is getting close to being completed people should go on zoom and discuss what else needs to be fixed. We don't want to see long PR discussions on GitHub. The **author** of the issue/user story/pull request should ping people on slack and get them on zoom to polish things.

Every user story that first needs additional research should have automatically higher story points.

Every day on stand-up scrum master should screen share and go through all the user stories that are *in progress*. He/She should ask the team `What can we close today?`.

Developers should be more involved in marketing/support related user stories. When a user story is created the author should assign a developer (one or more) from whom he/she thinks he/she will be able to get the technical details about the user story. Then that developer (one or more) should update the detailed technical description of the user story. Developers should also try to find different, easier solutions for the problem that this user story will solve, and present them to the author of the user story.


### Useful Lists

 * My open issues -> check this list daily!: [click!](https://github.com/issues/assigned)
 * All issues [Needing User Story](#label_needs_user_story): [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Needs+User+Story%22+org%3Aniteoweb&type=)
 * All [Ongoing](#label_ongoing) tasks: [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Ongoing%22+org%3Aniteoweb&type=)
 * All [Sanity Checks](#label_sanity_check) tasks: [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Sanity+Check%22+org%3Aniteoweb&type=)
 * All [Support](#label_support) aka. maintenance tasks: [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Support%22+org%3Aniteoweb&type=)

