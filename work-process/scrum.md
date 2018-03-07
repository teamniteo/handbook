# Scrum

Sprint length: two weeks.

Story Points commitment: 8 for each full-time member on the sprint and at least 25% of total commitment reserved for bugfixes and cleanup.

User Stories with the highest story points are assigned and started first. That way simpler User Stories without champions can be worked on in the last days of the sprint by anyone who finished their own early.

User Stories that are dependent on each other should be merged into one bigger user story. This kind of user stories can have 2 champions.

Support tasks take priority over sprint for support and DevOps team.

For each sprint, a new milestone is created with name `Sprint #X` where `X` is the number of the sprint (e.g. `Sprint #4`). On SCRUM sprint planning each User Story that is added to the planning sprint must be also added to the new milestone. With this ZenHub will automatically generate Burndown chart and we avoid having an additional label (`Sprint #X` label).


## Schedule

Our sprints start on a Wednesday 9am UTC with the [Sprint Planning](https://en.wikipedia.org/wiki/Scrum_(software_development)#Sprint_planning) meeting. They end on the Tuesday two weeks later with [Sprint Review and Sprint Retrospective](https://en.wikipedia.org/wiki/Scrum_(software_development)#Sprint_review_and_retrospective) meetings held at 10am CEST.

The last Monday morning of the Sprint everyone should open up the Kanban Board and ask themselves: "How can I help close whatever is still opened?". Repeat the same after lunch and on Tuesday morning.

On the Wednesday in the middle of the sprint we hold the <a name="product_backlog_refinement_meeting"></a>[Product Backlog Refinement](https://en.wikipedia.org/wiki/Scrum_(software_development)#Backlog_refinement) meeting at 10am CEST.

All other days we hold the [Daily Standup](https://en.wikipedia.org/wiki/Scrum_(software_development)#Daily_scrum) meeting at 10am CEST.

For each new sprint the Scrum Master will create an operations sprint release that is used to store the User Story screencast demos. The template for this release is copied from [RELEASE_TEMPLATE.md](https://github.com/niteoweb/operations/raw/master/.github/RELEASE_TEMPLATE.md) in the operations repo.


## Scrum on GitHub

Some of ideas are taken from https://colloq.io/blog/the-tools-we-use-to-stay-afloat.

Our Kanban Board is at https://github.com/niteoweb/operations/#boards. By clicking on the `Show Menu` you get an additional sidebar that displays the main information about the sprint, such as the **Sprint Goal**, our capacity for the sprint, committed story points and the **Burndown Chart**.

GitHub checkboxes are often utilized in creating mini-tasks for User Stories. Since there is no history on who clicked on what checkbox and when, always add a comment about the change made everytime a checkbox is ticked.


## Scrum Recommendations

After issue/user story/pull request is getting close to being completed people should go on zoom and discuss what else needs to be fixed. We don't want to see long PR discussions on GitHub. The **author** of the issue/user story/pull request should ping people on slack and get them on zoom to polish things.

Every user story that first needs additional research should have automatically higher story points.

Every day on stand-up scrum master should screen share and go through all the user stories that are *in progress*. He/She should ask the team `What can we close today?`.

Developers should be more involved in marketing/support related user stories. When a user story is created the author should assign a developer (one or more) from whom he/she thinks he/she will be able to get the technical details about the user story. Then that developer (one or more) should update the detailed technical description of the user story. Developers should also try to find different, easier solutions for the problem that this user story will solve, and present them to the author of the user story.


## Sprint Retrospective

After each sprint, we have a retrospective, where we think about:

* What went well during the sprint?
* What went wrong during the sprint?
* What improvements could we make?

This is also the time to bring up any other comments about the work process in general.

We look at how many Story Points we assigned, how many were done and the distribution between the departments and types of User Stories.

The Scrum Master will create a new [retrospective issue](https://github.com/niteoweb/operations/issues/new?template=retrospective.md&title=Sprint%20#%20Retrospective) before each retrospective. This issue has a template that serves as a checklist for the meeting and helps the Scrum Master write up a brief report afterwards.


## Alignment Meeting

15 minutes after the [Sprint Retrospective] we hold another meeting. Attendance on this one is optional, only those interested in the general direction the company is taking normally attend. That said, every Nitean is welcome to participate.

We go through the [cancellation reasons of EBN users](https://github.com/niteoweb/support/blob/master/EBN/cancellation-analysis.md). Since they are our primary customers, we want to know why they're leaving and check if there are any actionable reasons.

Then we go through all [Cardinal Dashboards] and check for trends that need addressing.

Finally we look over the quarterly goals to determine how we are achieving them and to give us an idea of what should be included in the following day's sprint planning session.

The main purpose of the Alignment Meeting is to adjust our compasses so that we will select the correct User Stories in the Sprint Planning meeting coming the next day. We
know we are paddling hard, but are we all paddling in the right direction?


## Story Point Estimation

A [Story Point](https://agilefaq.wordpress.com/2007/11/13/what-is-a-story-point/) is an arbitrary measure used by Scrum teams to indicate the effort required to implement a User Story.

One full time member on sprint should be able to do 10 Story Points. Estimates are based on [ZenHub estimates](https://www.zenhub.com/blog/software-estimates/) and the `Estimate` label in a User Story also shows available values.

In the *Vote* step, the Scrum Master updates the User Story with a `✋ [vote]` prefix to the title and assigns the team members from whom they want to receive Story Point estimations. Once a team member recieves a notification and gives their Story Point estimation, they should unassign themselves from the User Story.

The Scrum Master then checks for concensus on the Story Points, sets the `Estimate` label to that value, removes the `✋ [vote]` prefix and moves the User Story to the top of the pipeline. The User Story is now ready to be included in the next sprint.


## Recurring tasks

There is a bunch of tasks we have to do every month/quarter/year. To make sure they get assigned enough time for proper execution, we include them in sprints as User Stories. The only difference is, they don't need User Story demo recordings since they happen so often and are repetitive.

For every month/quarter that a recurring task is required we (re)open the issue and create a comment for the new month/quarter.

On every Sprint Planning meeting we go through the [list of User Stories for recurring tasks](https://github.com/niteoweb/operations/issues?utf8=%E2%9C%93&q=+label%3ARecurring+) and we add those that apply to the sprint first.
