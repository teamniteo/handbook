# Scrum

Our work process is based on [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)), but modified to suit to our specific needs:

 * We are our own *product owners*, as we have no customer projects.
 * We work asynchronously, so keep scheduled meetings to the bare minimum.
 * We schedule our work into two week long *sprints*.
 * We manage our sprints with GitHub and ZenHub.
 
To put it in simple terms: **product owner defends the users, scrum master defends the team**. Ideally, this relationship brings the best results for users while not overworking the developers.

Read about [writing User Stories and issues](user-stories.md).

User Stories with the highest story points are assigned and started first. That way simpler User Stories without champions can be worked on in the last days of the sprint by anyone who finished their own early.

User Stories that are dependent on each other should be merged into one bigger user story. This kind of User Stories can have 2 champions.

Support tasks take priority over sprint for support and DevOps team.

For each sprint, a new milestone is created with the name `Sprint #X` where `X` is the number of the sprint (e.g. `Sprint #4`). On Scrum sprint planning each user story that is added to the planning sprint must be also added to the new milestone. With this ZenHub will automatically generate a burndown chart and we avoid having an additional label (`Sprint #X` label).

## Standup Meetings

Standup meetings are short meetings every other Mondays and Thursday where we go over the work done and what still needs to be done. It is also where we discuss any blockers and where project managers can keep a tab on workload. Company discussions, announcements and updates are also done on these meetings. The order for Niteans on standups is alphabetically. So the person whose first name starts with `A` goes first. Every project has its own standup time.

Turn on your camera during the standup. Try to refrain from doing other things (browsing, doing support, etc.) during the meeting -- it rarely takes more than 15 minutes and we should all pay attention to everyone else for this period.

## Sprint Planning

Each sprint starts with planning. This is where we choose well-defined User Stories to put in the sprint. We always keep in mind our quarterly goals to make sure we're doing the tasks that are moving us in the right direction.

The Scrum master creates a new [Sprint issue](https://github.com/niteoweb/sprint/issues/new?template=planning.md&title=Planning%20for%20Sprint%20#) before each planning.

## Sprint Retrospective 

After each sprint, we have a retrospective, where we think about what went well during the sprint, what went wrong and what improvements could we make.

This is also the time to bring up any other comments about the work process in general.

We look at how many story points we assigned, how many were done and the distribution between the departments and types of User Stories.

The Scrum master adds the Sprint Retrospective comment into the Sprint issue. It serves as a checklist for the meeting and helps the Scrum master write up a brief report afterward.

## Urgent Production Fixes

If we need to fix an urgent bug, we use the Scrum *priority lane* approach: the user story gets written and then if the product owner decides it really is urgent, the user story is added to the top of 'In Progress' pipeline and labeled with Priority Lane so that everyone knows it is an exceptional and urgent issue and the whole team needs to focus on getting it completed as soon as possible.

## Ongoing Tasks

Sometimes the result of a user story is an agreement that we should do a certain task periodically, over a longer period of time. Such tasks are created in whichever repo is the most appropriate and labeled with Ongoing label.

## Recurring Tasks

There are a bunch of tasks we have to do every month/quarter/year. To make sure they get assigned enough time for proper execution, we include them in sprints as user stories. The only difference is, they don't need user story demo recordings since they happen so often and are repetitive.

For every month/quarter that a recurring task is required we (re)open the issue and create a comment for the new month/quarter.

## On-Calls

Sometimes, things break in the middle of the night or on weekends. The great thing about being a remote-first team is that we cover different time zones so there is almost always someone available. The solution for the weekend is to have Niteans on-call.

Being on-call means being available for any critical, urgent issues that may arise. Some examples of this are servers offline or the product app is down. Each on-call day (Saturday and Sunday) counts as a 2-hour workday, even if there were no emergencies. Any work more than two hours counts as regular work.

Niteans can be on-call only if they already pass basic support training or has already reported for [Everyone on Support](https://github.com/niteoweb/handbook/blob/master/4_Marketing-Support/everyone-on-support.md).

Every [sprint planning](https://github.com/niteoweb/handbook/blob/master/2_Operations/scrum.md#sprint-planning), the Niteans on-call for the two weekends will be assigned and noted on the Sprint issue.
