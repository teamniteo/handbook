# Work Process

## Schedule

* Every **Monday** we have a [Monday Meeting ("MM")](https://github.com/teamniteo/handbook/blob/master/2_Operations/kanban.md#monday-meetings):
   * 12:00 UTC for the whole company in the Niteo Zoom room followed immediately by separate meetings for the projects in their own Zoom channels.

* Every weekday Niteans should check their [GitHub notifications](https://github.com/notifications) so that they don't miss things that involve them.

* A [Developers Session](#developers-session) is scheduled when we have a fair amount of items to talk about and is typically held right after the Monday Meeting.

Niteans are encouraged to take Fridays off for a long weekend. Same as any other vacation off, make sure that your backup Nitean is available to handle any potential issues (see [Vacation policy](https://github.com/teamniteo/handbook/blob/master/5_People/benefits.md#vacation)).

## Quarterly Review and Planning

Every quarter we take time to review, reflect, and plan for the next quarter. There are three tasks for the Quarterly Review and Planning: Partners Meeting, Quarterly Review, and All Hands Meeting.

## Developers Session

We are a remote company and as such sharing of ideas and lessons learned is impaired by the fact that we don't have the time or space to do that effectively. In the long term, this is hurting everyone and as such the Developers Session is a way to discuss recent ideas, questions and novelties.

In order to prevent excessive [bike-shedding](https://en.wikipedia.org/wiki/Law_of_triviality), Developers Session is limited to 60 minutes.

### Agenda

As an attendee, ask yourself:

- Did I have a problem with understanding an implementation I saw recently?
- Was I annoyed by a particular workflow or something that I think is wasting my time?
- Did I find a handy tool/method/module that I think we should use?
- Do I have an idea about implementation we will have in the upcoming weeks, and I want to discuss it?
- Have I seen a great technical talk and I want to share it so we can discuss it the next time?
- Do I want to share something I learned in a short lightning talk?
- Do I need help with the user story I have been assigned to?

As a curator:

- Organize which time to have the session and announce it in #development when it's time to join and paste a link to the Zoom room.
- Prepare a joke or something funny to share.
- As a curator, meet and greet everyone, especially first-time joiners.
- If you hear crickets, start rolling the ball with a question, an anecdote or a funny story.
- Make sure no one is talking the whole 30 minutes, everyone should have an opinion!
- Write a report into the **Recurring** ticket for the meeting.

## Commits and Pull Requests

While working on user stories we often need to change code or text that we keep in GitHub. These changes are done with [git commits](https://help.github.com/articles/github-glossary/#commit) and are presented to others for review as [Pull Requests](https://help.github.com/articles/about-pull-requests/).

To ensure that your commits and Pull Requests contain everything necessary for a successful review, read through the [Git](/3_Development/git.md) guide for the best practices.

When a User Story or Pull Request is getting close to being completed but there are still open issues, Niteans should have a discussion. We don't want to see long PR discussions on GitHub. The **author** of the issue should ping people on Slack and get them on Slack huddle to polish things.

## Continual Improvement

Big cleanups (of code, documentation, or anything else) happen rarely. They are hard to organize, and to motivate for. Instead of doing big cleanups every few months (years?) when pain levels are high enough, we prefer to do constant tiny improvements with an approach called [Continual Improvement](https://en.wikipedia.org/wiki/Continual_improvement_process).

For Niteo, this means that most Pull Request should include at least one minor cleanup commit alongside the main PR commit. It does not need to be related to the main commit, it can be improvements for anything in the repository, however trivial. This can include code and documentation updates, typo fixes, or removal of something that no longer makes sense.
