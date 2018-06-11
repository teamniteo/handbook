# Work process

## Scrum process
> *Main document: [Scrum](scrum.md)*

Our work process is based on [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)), but modified to suit to our specific needs:

 * We are our own *product owners*, as we have no customer projects.
 * We work asynchronously, so keep scheduled meetings to the bare minimum.
 * We schedule our work into two week long *sprints*.
 * We manage our sprints with GitHub and ZenHub.


## Schedule

 * Every weekday morning we hold a [daily standup](standup.md) meeting.

Sprint meetings replace the daily standup on these days:

 * A Wednesday is the start of a sprint with [sprint planning](scrum.md#Sprint_Planning).
 * The Tuesday, two weeks later, marks the end of the sprint with a [sprint retrospective](scrum.md#Sprint_Retrospective).
 * Then Wednesday, the next day, is usually the start of the next sprint.


## Creating issues and user stories
> *Main document: [Guide for user stories](user-stories.md)*

Undefined issues are created in various repositories to track known problems. Issues that are created by Support are usually reactionary so stay in project-related repositories and are not included in sprints.

When undefined issues from various repositories need to be moved into a sprint, a well-defined user story needs to be created for that issue. This can be done by the author of the issue, Scrum master or product owner.

To create a new user story, open an issue in [operations repository](https://github.com/niteoweb/operations/issues) and use the supplied template. There are further details on writing the US in the [user stories](user-stories.md) document.

## Pull requests and commits

> *Main article: [Git guide](../apps-we-use/git.md)*

While working on user stories we often need to change code or text that we keep in GitHub. These changes are done with [git commits](https://help.github.com/articles/github-glossary/#commit) and are presented to others for review as [Pull Requests](https://help.github.com/articles/about-pull-requests/).

To ensure that your commits and Pull Requests contain everything necessary for a successful review, read through the [Git](../apps-we-use/git.md) guide for the best practices.


## Continual improvement

Big cleanups (of code, documentation, or anything else) happen rarely. They are hard to organize, and to motivate for. Instead of doing big cleanups every few months (years?) when pain levels are high enough, we prefer to do constant tiny improvements with an approach called [Continual Improvement](https://en.wikipedia.org/wiki/Continual_improvement_process).

For Niteo, this means that every Pull Request (except Priority Lane issues) should include at least one minor cleanup commit alongside the main PR commit. It does not need to be related to the main commit, it can be improvements for anything in the repo, however trivial. This can include code and documentation updates, typo fixes, or removal of something that no longer makes sense.


## Urgent production fixes

If we need to fix an urgent bug, we use the Scrum *priority lane* approach: the user story gets written and then if the product owner decides it really is urgent, the user story is added to the top of 'In Progress' pipeline and labeled with [Priority Lane](user-stories.md#labels) so that everyone knows it is an exceptional and urgent issue and the whole team needs to focus on getting it completed as soon as possible.


## Ongoing tasks

Sometimes the result of a user story is an agreement that we should do a certain task periodically, over a longer period of time. Such tasks are created in whichever repo is the most appropriate and labeled with [Ongoing](#label_ongoing) label.

## Useful Lists

 * [My open issues](https://github.com/issues/assigned) (*Check daily!*)
 * All [Ongoing](#label_ongoing) tasks: [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Ongoing%22+org%3Aniteoweb&type=)
 * All [Sanity Checks](#label_sanity_check) tasks: [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Sanity+Check%22+org%3Aniteoweb&type=)
 * All [Support](#label_support) aka. maintenance tasks: [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Support%22+org%3Aniteoweb&type=)

