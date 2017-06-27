# Work Process

Our work process is based on Scrum, but modified slightly to apply better to our specific needs:
 * we don't do customer projects, we are our own Product Owners,
 * we don't want to use additional tools other than GitHub Issues which we already use,
 * we work asynchronously, so we try to keep scheduled meetings to the bare minimum.

The rough outline goes like so: Everyone creates issues in various repos. The issues are labeled as [Bug](#label_bug), [Cleanup](#label_cleanup), [Feature](#label_feature) and [Marketing](#label_marketing). @dmurko, who acts as a Product Owner and the current Scrum Master (we iterate between @karantan and @dz0ny), along with the issue author, create User Stories from these issues and put them on our [Product Backlog]((https://github.com/niteoweb/operations/projects/1)). What this means is that they create an issue in the [Operations](https://github.com/niteoweb/operations/) repo, enter the required information (we have a [template](https://github.com/niteoweb/operations/blob/master/.github/ISSUE_TEMPLATE.md) for that) and apply appropriate labels to the new issue:
 * one of [Bug](#label_bug), [Cleanup](#label_cleanup), [Feature](#label_feature) or [Marketing](#label_marketing)
 * one of project labels ([EBN](#label_ebn), [DMON](#label_dmon)) OR if the User Story is not project specific, the [Operations](#label_operations) label
 * [Product Backlog](#label_product_backlog) label

The author, the Product Owner and the Scrum Master, over the course of the following days and weeks refine the User Story so that it includes all needed information. When refinement is done the Scrum Master applies the [Needs Story Points](#label_needs_story_points) label. From this point on, whoever participated so far cast their votes on how much Story Points should this User Story have. The Scrum Master should also invite anyone else to cast their vote.

After a few days, the Scrum Master decides, based on cast votes, the Story Points for the User Story. The Story is then added by the Scrum Master to our [Kanban Board](https://github.com/niteoweb/operations/projects/1) into the Product Backlog into an appropriate position -- agreed with Product Master.

In other words, our Product Backlog only includes the top part of the official Scrum Product Backlog -- the well defined, ready to be worked on, User Stories. The non-well defined issues are spread around our repositories and can be considered as ideas. Some of these can be labeled with the [Needs User Story](#label_needs_user_story) label so that we are reminded about the importance of these issues.

If you are passionate about a User Story, make sure to poke Scrum Master and other to confirm it all the information it needs so that voting can begin. Without votes the User Story cannot be included into the next sprint.


## Urgent production fixes

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

Project labels:

 * <a name="label_ebn"></a>**EBN**: User Stories for the Easy Blog Networks project
 * <a name="label_dmon"></a>**DMON**: User Stories for the Easy Domain Monitor / Indexation Check project

Department labels:

 * <a name="label_operations"></a>**Operations**: operations related task, such as adding and improving internal docs, processes, …
 * <a name="label_marketing"></a>**Marketing**: a marketing related task, such as setting up ad campaigns, writing blog posts, ...
 * <a name="label_support"></a>**Support**: user-facing maintenance work, not included in sprints, such as fixing subscription problems, resetting passwords, re-enabling accounts, etc.
 * <a name="label_people"></a>**People**: internally-facing maintenance work, not included in sprints, such as hiring, onboarding, ...

Scrum labels:

* <a name="label_needs_user_story"></a>**Needs User Story**: when User Story is first opened, it needs to be defined by all stakeholders
* <a name="label_needs_story_points"></a>**Needs Story Points**: in the process of Story Points voting
* <a name="label_product_backlog"></a>**Product Backlog**: when User Story is defined and has story points, it gets marked for Product Backlog
* <a name="label_priority_lane"></a>**Priority Lane**: User Stories injected into the current sprint due to urgency
* <a name="label_retrospective"></a>`Retrospective`: issues that describe the sprint retrospective


## Useful Lists

 * My open issues -> check this list daily!: [click!](https://github.com/issues/assigned)
 * All issues [Needing User Story](#label_needs_user_story): [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Needs+User+Story%22+org%3Aniteoweb&type=)
 * All [Ongoing](#label_ongoing) tasks: [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Ongoing%22+org%3Aniteoweb&type=)
 * All [Sanity Checks](#label_sanity_check) tasks: [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Sanity+Check%22+org%3Aniteoweb&type=)
 * All [Support](#label_support) aka. maintenance tasks: [click!](https://github.com/search?utf8=%E2%9C%93&q=is%3Aopen+label%3A%22Support%22+org%3Aniteoweb&type=)


# Scrum

Sprint length: two weeks.

Story Points commitment: 35 total, at least 7 should be bugfixes and cleanup.


## Schedule

Our sprints start on a Wednesday 10am CEST with the [Sprint Planning](https://en.wikipedia.org/wiki/Scrum_(software_development)#Sprint_planning) meeting. They end on a Tuesday two weeks later with [Sprint Review and Sprint Retrospective](https://en.wikipedia.org/wiki/Scrum_(software_development)#Sprint_review_and_retrospective) meetings held at 10am CEST.

On the Wednesday in the middle of the sprint we hold the <a name="product_backlog_refinement_meeting"></a>[Product Backlog Refinement](https://en.wikipedia.org/wiki/Scrum_(software_development)#Backlog_refinement) meeting at 10am CEST.

All other days we hold the [Daily Standup](https://en.wikipedia.org/wiki/Scrum_(software_development)#Daily_scrum) meeting at 10am CEST.


## Scrum on GitHub

Some of ideas are taken from https://colloq.io/blog/the-tools-we-use-to-stay-afloat.

Our Kanban Board is at https://github.com/niteoweb/operations/projects/1. By clicking on the `Show Menu` you get an additional sidebar that displays the main information about the sprint, such as the **Sprint Goal**, our capacity for the sprint, committed story points and the **Burndown Chart**.


### Team Capacity

To have a quick overview of who is available to work in the current sprint we use the following rule:
 * people who are away are not included in the sprint
 * people who are swamped with maintenance, support and ongoing work are not included in the sprint so they can focus on their work
 * people who can commit about half of their time to the sprint work have a "single finger" icon
 * people who can commit most of their time to the sprint work have a "double fingers" icon





