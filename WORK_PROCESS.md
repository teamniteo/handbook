# Work Process

Our development process is based on Scrum, but modified slightly to apply better to our specific needs:

 * we don't do customer projects, we are our own Product Owners,
 * we currently don't use additional tools other than GitHub Issues which we already use,
 * we work asynchronously, so we try to keep scheduled meetings to the bare minimum.

Undefined issues are created in various repositories. Support issues, being reactionary, stay in project-related repositories and are not included in sprints. All other tasks go into sprints. Sprint is managed from the [Operations repository](https://github.com/niteoweb/operations/issues).

In Operations repository when you open an issue, it has a template that helps you define the User Story. User Story in this step is labeled with `Needs User Story`, a descriptive label, project label and department label. The Scrum Master and Product Owner assign people from whom they want to receive feedback for better definition of the User Story. Once they agree it's well defined, they remove the label `Needs User Story` and label it `Needs Story Points`.

In the step `Needs Story Points`, Scrum Master assigns the User Story to people from whom s/he wants to receive Story Point estimation. Once this is agreed, s/he adds a Story Point label to the title (http://unicode.org/emoji/charts/full-emoji-list.html#keycap), removes the `Needs Story Points` label and adds label `Product Backlog`. This User Story can now be added to Kanban Board Product Backlog for review on next sprint.

To summarize:

1. `Needs User Story` - needs better description, Scrum Master requests feedback and input from all stakeholders
2. `Needs Story Points` - needs story points estimation, Scrum Master requests input from people with knowledge about the task
3. `Product Backlog` - well defined User Story that can go in the next sprint

We also have the `Ongoing` label for ongoing tasks. These tasks do not get included in sprints, but we acknowledge them by decreasing our sprint story points limit.


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
* <a name="label_retrospective"></a>**Retrospective**: issues that describe the sprint retrospective


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





