# Work Process

## Scrum process
> *Main document: [Scrum](scrum.md)*

Our work process is based on [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)), but modified to suit to our specific needs:

 * We are our own Product Owners, as we have no customer projects.
 * We work asynchronously, so keep scheduled meetings to the bare minimum.
 * We schedule our work into two week long Sprints.
 * We manage our Sprints with GitHub and ZenHub.


## Schedule

 * Every weekday at 9am UTC we hold a [Daily Standup](https://en.wikipedia.org/wiki/Scrum_(software_development)#Daily_scrum) meeting.

Sprint meetings replace the Daily Standup on these days:

 * A Wednesday is the start of a Sprint with [Sprint Planning](scrum.md#Sprint_Planning).
 * The Tuesday, two weeks later, marks the end of the Sprint with a [Sprint Retrospective](scrum.md#Sprint_Retrospective).
 * Then Wednesday, the next day, is usually the start of the next Sprint.


## Creating Issues and User Stories
> *Main document: [Issues and User Stories](user-stories.md)*

Undefined issues are created in various repositories to track known problems. Issues that are created by Support are usually reactionary so stay in project-related repositories and are not included in sprints.

When undefined issues from various repositories need to be moved into a Sprint, a well-defined User Story needs to be created for that issue. This can be done by the author of the issue, Scrum Master or Project Owner.

To create a new User Story, open an issue in [Operations repository](https://github.com/niteoweb/operations/issues) and use the supplied template. There are further details on writing the US in the [Issues and User Stories](user-stories.md) document.

## Pull Requests and Commits

> *Main article: [Git guide](../apps-we-use/git.md)*

While working on User Stories we often need to change code or text that we keep in GitHub. These changes are done with [git commits](https://help.github.com/articles/github-glossary/#commit) and are presented to others for review as [Pull Requests](https://help.github.com/articles/about-pull-requests/).

To ensure that your commits and Pull Requests contain everything necessary for a successful review, read through the [Git](../apps-we-use/git.md) guide for the best practices.


## Continual Improvement

Big cleanups (of code, documentation, or anything else) happen rarely. They are hard to organize, and to motivate for. Instead of doing big cleanups every few months (years?) when pain levels are high enough, we prefer to do constant tiny improvements with an approach called [Continual Improvement](https://en.wikipedia.org/wiki/Continual_improvement_process).

For Niteo, this means that every Pull Request (except Priority Lane issues) should include at least one minor cleanup commit alongside the main PR commit. It does not need to be related to the main commit, it can be improvements for anything in the repo, however trivial. This can include code and documentation updates, typo fixes, or removal of something that no longer makes sense.


## Urgent Production Fixes

If we need to fix an urgent bug, we use the Scrum Priority Lane approach: the User Story gets written and then if the Product Owner decides it really is urgent, the User Story is added to the top of WIP column and labeled with [Priority Lane](user-stories.md#scrum-labels) so that everyone knows it is an exceptional and urgent issue and the whole team needs to focus on getting it to column Done ASAP.


## Ongoing Tasks

Sometimes the result of a User Story is an agreement that we should do a certain task periodically, over a longer period of time. Such tasks are created in whichever repo is the most appropriate and labeled with [Ongoing](#label_ongoing) label.

## Useful Lists

 * [My open issues](https://github.com/issues/assigned) (*Check daily!*)
 * All [Ongoing](#label_ongoing) tasks: [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Ongoing%22+org%3Aniteoweb&type=)
 * All [Sanity Checks](#label_sanity_check) tasks: [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Sanity+Check%22+org%3Aniteoweb&type=)
 * All [Support](#label_support) aka. maintenance tasks: [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Support%22+org%3Aniteoweb&type=)

