# Work Process

Our work process is based on [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)), but modified slightly to apply better to our specific needs:

 * we don't do customer projects, so we are our own Product Owners,
 * we currently use GitHub and ZenHub for sprint management,
 * we work asynchronously, so we try to keep scheduled meetings to the bare minimum.

## Creating Issues and User Stories
> *Main article: [Issues and User Stories](issue-user-story.md)*

Undefined issues are created in various repositories to track known problems. Issues that are created by Support are usually reactionary so stay in project-related repositories and are not included in sprints.

When undefined issues from various repositories need to be moved into a Sprint, a well-defined User Story needs to be created for that issue. This can be done by the author of the issue, Scrum Master or Project Owner.

The User Stories for the Sprint are managed in the [Operations repository](https://github.com/niteoweb/operations/issues).

## Story Point Estimation

A [Story Point](https://agilefaq.wordpress.com/2007/11/13/what-is-a-story-point/) is an arbitrary measure used by Scrum teams to indicate the effort required to implement a User Story. One full time member on sprint should be able to do 10 Story Points. For labeling User Story estimates, we use [ZenHub Estimates](https://www.zenhub.com/blog/software-estimates/).

In the "Vote" step (the User Stories that have ``✋ [vote]`` prefix), Scrum Master assigns the User Story to people from whom s/he wants to receive Story Point estimations. Once these people post their story point estimation, they unassign themselves from the User Story. The Scrum Master then adds the agreed numbered Story Point label to the title, removes the ``✋ [vote]`` prefix and moves the User Story to the top of the pipeline. This User Story can now be added to the next sprint.


## Pull Requests and Commits

> *Main article: [Git Best Practices](git-best-practice.md)*

While working on User Stories we often need to change code or text that we keep in GitHub. These changes are done with [git commits](https://help.github.com/articles/github-glossary/#commit) and are presented to others for review as [Pull Requests](https://help.github.com/articles/about-pull-requests/).

To ensure that your commits and Pull Requests contain everything necessary for a successful review, read through the [Git Best Practices](git-best-practice.md) guide.

### Continual Improvement

Big cleanups (of code, documentation, or anything else) happen rarely. They are hard to organize, and to motivate for. Instead of doing big cleanups every few months (years?) when pain levels are high enough, we prefer to do constant tiny improvements with an approach called [Continual Improvement](https://en.wikipedia.org/wiki/Continual_improvement_process).

For Niteo, this means that every Pull Request (except Priority Lane issues) should include at least one minor cleanup commit alongside the main PR commit. It does not need to be related to the main commit, it can be improvements for anything in the repo, however trivial. This can include code and documentation updates, typo fixes, or removal of something that no longer makes sense.

## Urgent Production Fixes

If we need to fix an urgent bug, we use the Scrum Priority Lane approach: the User Story gets written and then if the Product Owner decides it really is urgent, the User Story is added to the top of WIP column and labeled with [Priority Lane](#label_priority_lane) so that everyone knows it is an exceptional and urgent issue and the whole team needs to focus on getting it to column Done ASAP.


## Ongoing Tasks

Sometimes the result of a User Story is an agreement that we should do a certain task periodically, over a longer period of time. Such tasks are created in whichever repo is the most appropriate and labeled with [Ongoing](#label_ongoing) label.

## Sprint Retrospective

After each sprint, we do a retrospective. We think about:

* What went well during the sprint?
* What went wrong during the sprint?
* What could we do differently to improve?
* Other comments.

We also add a note on how many Story Points we assigned, how many were done and the distribution between the departments and types of User Stories.

Last Retrospective agenda should be going through the [cancellation reasons of our VIP users](https://github.com/niteoweb/support/blob/master/EBN/cancellation-analysis.md) (Agency plan and above). Since they are our primary customers, we want to know why they're leaving and see if there are any actionable reasons.

Before each Retrospective scrum master creates a new issue. Use the [retrospective template](templates/retrospective.md) for this.

This template serves as a checklist for Sprint Retrospective. After the meeting scrum master briefly writes a report and this template helps him with that.

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

