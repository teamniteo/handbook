
# Work Process

## Schedule

* Every **Monday and Thursday** morning we hold a daily standup meeting:
   * 10:00 CE(S)T for the whole company in the Niteo Zoom room
   * followed immediately by separate standups for Easy Blog Networks and WooCart, in their own Zoom rooms
* Every other **weekday** morning we hold a daily standup meeting:
   * 10:00 CE(S)T separate standups for Easy Blog Networks and WooCart, in their own Zoom rooms
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
   * 13:00 CE(S)T for Developers Session

The last Monday morning of the sprint everyone should open up the Scrum board and ask themselves: "How can I help close whatever is still opened?". Repeat the same after lunch and on Tuesday morning.

For each new sprint, the Scrum master will create a sprint release that is used to store the user story screencast demos. The template for this release is copied from [RELEASE_TEMPLATE.md](https://github.com/niteoweb/operations/raw/master/.github/RELEASE_TEMPLATE.md) in the operations repo.

## Scrum

Our work process is based on [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)). Read in detail about [our Scrum process](scrum.md) and writing [User Stories](user-stories.md).

 * Sprint length is two weeks.
 * Story points commitment: 10 for each full-time member on the sprint. The total team commitment has at least 25% reserved for bug fixes and cleanup.

## Quarterly Planning

TODO

## Alignment Meeting

After the sprint retrospective we hold another meeting. Attendance is optional but every Nitean is welcome to participate. Primarily we look over the quarterly goals to determine if we are achieving them and to give us an idea of what should be included in the following day's sprint planning session.

The main purpose of the alignment meeting is to adjust our compasses so that we will select the correct user stories in the sprint planning meeting coming the next day. We know we are paddling hard, but are we all paddling in the right direction?

## Developers Session

We are a remote company and as such sharing of ideas and lessons learned is impaired by the fact that we don't have the time or space to do that effectively. 

In the long term, this is hurting everyone and as such `Developers Sessions` are a way to discuss ideas and questions that might have arisen during retrospective or the sprint. Followed by a short lightning talk(s), which can be impromptu or declared beforehand so others can join. 

You can learn something from every single person in the world, no matter what their opinion on any topic is. We also believe that this is a big part of open source and our company, being able to learn and collaborate with people from all over the world who have a wide variety of different opinions on how to do things. On the other hand, a lightning talk can be a perfect way for testing how people react to a talk that you are going to have at next conference or just getting rid of that presentation fear in front of people.

In order for things to not explode, the Session is limited to 30 minutes plus any lightning talks to 5min.

### Agenda

As an attendee, ask yourself:

- Did I have a problem with understanding of implementation I saw during the sprint? 
- Was I annoyed by a particular workflow or something that I think is wasting my time?
- Did I find a handy tool/method/module that I think we should use?
- Do I have an idea about implementation we will have in the next sprint, and I want to discuss it?
- Have I seen a great technical talk and I want to share it so we can discuss it the next time?
- Do I want to share something I leared in a short lighning talk?
- Do I need help with the user story I have been asigned to?

As a curator:

- Announce in #development Zoom session to join into
- As a curator, meet and greet everyone, especially first-time joiners. 
- Annonce who is having Lightning talk if one was prepared.
- If you hear crickets, start rolling the ball with a question, an anecdote or a funny story.
- Make sure no one is talking the whole 30 minutes, everyone should have an opinion!
- Write a report into Recurring ticket for the meeting.

## Commits and Pull Requests

While working on user stories we often need to change code or text that we keep in GitHub. These changes are done with [git commits](https://help.github.com/articles/github-glossary/#commit) and are presented to others for review as [Pull Requests](https://help.github.com/articles/about-pull-requests/).

To ensure that your commits and Pull Requests contain everything necessary for a successful review, read through the [Git](/3_Development/git.md) guide for the best practices.

When a User Story or Pull Request is getting close to being completed but there are still open issues, Niteans should have a discussion on Zoom. We don't want to see long PR discussions on GitHub. The **author** of the issue should ping people on Slack and get them on Zoom to polish things.


## Continual Improvement

Big cleanups (of code, documentation, or anything else) happen rarely. They are hard to organize, and to motivate for. Instead of doing big cleanups every few months (years?) when pain levels are high enough, we prefer to do constant tiny improvements with an approach called [Continual Improvement](https://en.wikipedia.org/wiki/Continual_improvement_process).

For Niteo, this means that every Pull Request (except Priority Lane issues) should include at least one minor cleanup commit alongside the main PR commit. It does not need to be related to the main commit, it can be improvements for anything in the repo, however trivial. This can include code and documentation updates, typo fixes, or removal of something that no longer makes sense.

