# Scrum

 * Sprint length: two weeks.
 * Story points commitment: 10 for each full-time member on the sprint. The total team commitment has at least 25% reserved for bugfixes and cleanup.
 * Sprint meeting times: Same as [daily standup](standup.md)

User stories with the highest story points are assigned and started first. That way simpler user stories without champions can be worked on in the last days of the sprint by anyone who finished their own early.

User stories that are dependent on each other should be merged into one bigger user story. This kind of user stories can have 2 champions.

Support tasks take priority over sprint for support and DevOps team.

For each sprint, a new milestone is created with the name `Sprint #X` where `X` is the number of the sprint (e.g. `Sprint #4`). On Scrum sprint planning each user story that is added to the planning sprint must be also added to the new milestone. With this ZenHub will automatically generate a burndown chart and we avoid having an additional label (`Sprint #X` label).


## Schedule

Our sprints start on a Wednesday morning with the [sprint planning](https://en.wikipedia.org/wiki/Scrum_(software_development)#Sprint_planning) meeting. They end on a Tuesday morning two weeks later with [sprint review and sprint retrospective](https://en.wikipedia.org/wiki/Scrum_(software_development)#Sprint_review_and_retrospective) meetings.

The last Monday morning of the sprint everyone should open up the Scrum board and ask themselves: "How can I help close whatever is still opened?". Repeat the same after lunch and on Tuesday morning.

On the Wednesday in the middle of the sprint we hold the <a name="product_backlog_refinement_meeting"></a>[Product Backlog Refinement](https://en.wikipedia.org/wiki/Scrum_(software_development)#Backlog_refinement) meeting.

All other weekday mornings we hold the [daily standup](standup.md) meeting.

For each new sprint, the Scrum master will create an operations sprint release that is used to store the user story screencast demos. The template for this release is copied from [RELEASE_TEMPLATE.md](https://github.com/niteoweb/operations/raw/master/.github/RELEASE_TEMPLATE.md) in the operations repo.

## Daily Standup

Daily standup meetings are short meetings every day where we go over the work done on the previous day and to be done the same/next day. It is also where we discuss any blockers and where project managers can keep a tab on workload. Every project has its own standup time. 

Turn on your camera during the standup. Try to refrain from doing other things (browsing, doing support, etc.) during the meeting -- it rarely takes more than 15 minutes and we should all pay attention to everyone else for this period.


## Scrum on GitHub

Some of the ideas are taken from https://colloq.io/blog/the-tools-we-use-to-stay-afloat.

Our Scrum board is at https://github.com/niteoweb/operations/#boards. By clicking on the `Show Menu` you get an additional sidebar that displays the main information about the sprint, such as the *sprint goal*, our capacity for the sprint, committed story points and the *burndown chart*.

GitHub checkboxes are often utilized in creating mini-tasks for user stories. Since there is no history on who clicked on what checkbox and when always add a comment about the change made everytime a checkbox is ticked.


## Scrum recommendations

After issue/user story/pull request is getting close to being completed people should go on zoom and discuss what else needs to be fixed. We don't want to see long PR discussions on GitHub. The **author** of the issue/user story/pull request should ping people on slack and get them on zoom to polish things.

Every user story that first needs additional research should have automatically higher story points.

Every day on stand-up the Scrum master should screen share and go through all the user stories that are *in progress*. They should ask the team `What can we close today?`.

Developers should be more involved in marketing/support related user stories. When a user story is created the author should assign a developer (one or more) from whom they think they will be able to get the technical details about the user story. Then that developer (one or more) should update the detailed technical description of the user story. Developers should also try to find different, easier solutions to the problem that this user story will solve, and present them to the author of the user story.


## Sprint retrospective

After each sprint, we have a retrospective, where we think about:

* What went well during the sprint?
* What went wrong during the sprint?
* What improvements could we make?

This is also the time to bring up any other comments about the work process in general.

We look at how many story points we assigned, how many were done and the distribution between the departments and types of user stories.

The Scrum master will create a new [retrospective issue](https://github.com/niteoweb/operations/issues/new?template=retrospective.md&title=Retrospective%20for%20Sprint%20#) before each retrospective. This issue has a template that serves as a checklist for the meeting and helps the Scrum master write up a brief report afterward.


## Alignment meeting

15 minutes after the [sprint retrospective] we hold another meeting. Attendance on this one is optional, only those interested in the general direction the company is taking normally attend. That said, every Nitean is welcome to participate.

We go through the [cancellation reasons of EBN users](https://github.com/niteoweb/support/blob/master/EBN/cancellation-analysis.md). Since they are our primary customers, we want to know why they're leaving and check if there are any actionable reasons.

Then we go through all [cardinal dashboards] and check for trends that need addressing.

Finally, we look over the quarterly goals to determine how we are achieving them and to give us an idea of what should be included in the following day's sprint planning session.

The main purpose of the alignment meeting is to adjust our compasses so that we will select the correct user stories in the sprint planning meeting coming the next day. We
know we are paddling hard, but are we all paddling in the right direction?


## Recurring tasks

There are a bunch of tasks we have to do every month/quarter/year. To make sure they get assigned enough time for proper execution, we include them in sprints as user stories. The only difference is, they don't need user story demo recordings since they happen so often and are repetitive.

For every month/quarter that a recurring task is required we (re)open the issue and create a comment for the new month/quarter.

On every sprint planning meeting, we go through the [list of user stories for recurring tasks](https://github.com/niteoweb/operations/issues?utf8=%E2%9C%93&q=+label%3ARecurring+) and we add those that apply to the sprint first.
