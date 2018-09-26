
# Work Process

## Schedule

 * Every **weekday** morning we hold a daily standup meeting:
   * 10:00 CE(S)T for the whole company in the Niteo Zoom room
   * followed immediately by separate standups for Easy Blog Networks and WooCart, in their own Zoom rooms
 * Every weekday Niteans should check their [GitHub notifications](https://github.com/notifications) so that they don't miss things that involve them.

Sprint meetings replace the daily standup on these days:

 * A **Wednesday** is the start of a sprint with sprint planning.
   * 10:00 CE(S)T for the whole company in the Niteo Zoom room
   * followed immediately by separate plannings for Easy Blog Networks and WooCart, in their own Zoom rooms
 * The **Tuesday**, two weeks later, marks the end of the sprint with a sprint retrospective and company alignment meeting.
   * 10:00 CE(S)T for Niteo
   * followed immediately by retrospective for Easy Blog Networks 
   * 11:00 CE(S)T for WooCart
   * 12:00 CE(S)T for Niteo Alignment Meeting

The last Monday morning of the sprint everyone should open up the Scrum board and ask themselves: "How can I help close whatever is still opened?". Repeat the same after lunch and on Tuesday morning.

For each new sprint, the Scrum master will create a sprint release that is used to store the user story screencast demos. The template for this release is copied from [RELEASE_TEMPLATE.md](https://github.com/niteoweb/operations/raw/master/.github/RELEASE_TEMPLATE.md) in the operations repo.

## Scrum

Our work process is based on [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)). Read in detail about [our Scrum process](scrum.md) and writing [User Stories](user-stories.md).

 * Sprint length is two weeks.
 * Story points commitment: 10 for each full-time member on the sprint. The total team commitment has at least 25% reserved for bug fixes and cleanup.

## Quarterly Planning

TODO

## Alignment Meeting

After the sprint retrospective we hold another meeting. Attendance on this one is optional, only those interested in the general direction the company is taking normally attend. That said, every Nitean is welcome to participate.

Primarily we look over the quarterly goals to determine how we are achieving them and to give us an idea of what should be included in the following day's sprint planning session.

The main purpose of the alignment meeting is to adjust our compasses so that we will select the correct user stories in the sprint planning meeting coming the next day. We know we are paddling hard, but are we all paddling in the right direction?

## Commits and Pull Requests

While working on user stories we often need to change code or text that we keep in GitHub. These changes are done with [git commits](https://help.github.com/articles/github-glossary/#commit) and are presented to others for review as [Pull Requests](https://help.github.com/articles/about-pull-requests/).

To ensure that your commits and Pull Requests contain everything necessary for a successful review, read through the [Git](/3_Development/git.md) guide for the best practices.

When a User Story or Pull Request is getting close to being completed but there are still open issues, Niteans should have a discussion on Zoom. We don't want to see long PR discussions on GitHub. The **author** of the issue should ping people on Slack and get them on Zoom to polish things.


## Continual Improvement

Big cleanups (of code, documentation, or anything else) happen rarely. They are hard to organize, and to motivate for. Instead of doing big cleanups every few months (years?) when pain levels are high enough, we prefer to do constant tiny improvements with an approach called [Continual Improvement](https://en.wikipedia.org/wiki/Continual_improvement_process).

For Niteo, this means that every Pull Request (except Priority Lane issues) should include at least one minor cleanup commit alongside the main PR commit. It does not need to be related to the main commit, it can be improvements for anything in the repo, however trivial. This can include code and documentation updates, typo fixes, or removal of something that no longer makes sense.

