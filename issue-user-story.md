# Issues and User Stories

## How to create a User Story

- In Operations repository when you open an issue, it has a template that helps you define the User Story.
- User Story in this step must be moved into `Backlog` pipeline in ZenHub.
- Various labels are added (see Issue Labels section).
- The Scrum Master and Product Owner verify if the User Story is well defined.
  * If it is not they assign people from whom they want to receive feedback for better definition of the User Story.
  * Once these people post their feedback, they unassign themselves from the User Story.
- Once the Scrum Master and Product Owner agree that the User Story is well defined, they add ``✋ [vote]`` prefix to the title of the User Story. At that point, Scrum Master and/or Product Owner assign people from whom they want to receive User Story Points estimation. With this, online poker planning begins.
- At the end of the online poker planning, Story Points are added to the User Story.
- The User Story is now prepared to be moved to the top of the User Story Pyramid stack.

Important:

* you are only assigned to a ticket when you need to do something: give feedback, vote on Story Points or are the champion working on the User Story
* unassign yourself when you have done the above task

## Writing User Stories

When you open a new issue in Operations repository, a template will guide you through the process.

Things to be written in the User Story:

### Story summary

 > As a *persona*, I want ..., so that ...

The opening lines of a Story are to be written in simplified, layman's terms for the whole team to understand. The viewpoint of a persona is to be used to fully understand to use-case.

Some frequenty used personas:

 * Nitean
 * Nitean on support
 * Developer
 * Marketer
 * DevOp

An end-user story can be written using these [Marketing Personas]:

 * Dan (Agency owner)
 * Mark (Affiliate)

### Story Description

Write in as much detail as possible, add mockups, previous discussion, etc.
What are you trying to fix or do? Why are you doing it and what happens if you don't? Provide further information with screenshots or links.

Write technical details on how to accomplish this proposal. Add references to any previous discussions of the proposal. Provide links to related information, such as existing User Stories. Assign anyone that you need feedback from, for this User Story.

Finally take a bit of time to consider at least one pitfall (downside) to implelemnting the proposed changes. So what could go wrong or how could it affect other systems.

### Best Practices (Definition of Done)

The Best Practices are a list of items that should relate to the story and guide the writing of the Expectations for completion of the story.

All major features should have a blog post written. If you are not sure if it should be written or not, ask the Scrum Master (`karantan`) or Product Owner (`dmurko`). The marketing team (`dmurko`, `Matei-Gavris`) writes and reviews the details of the actual blog post.

### Expectations (Acceptance Criteria)

The expected outcomes of the User Story which is a list of items stating how the
 the world will look once the User Story has been completed. This is not the individual
 task or activities but rather what will the documentation look like, what new tests will we see, what bug no longers occurs because it has been fixed.

### Screencast Story Demos

A short screencast is required that demostrates the User Story has been completed. These demos are primarily intended to be viewed at the Sprint retrospective so only need to be a rough overview, along with any relevant or important information for the rest of the team. The more in-depth details can be posted as comments to the User Story.

The length of the demos should be around 1 minute long but no more than 2 minutes.

The demo file should renamed usig dashes and include issue number and reposity as show in filename format below.

`<issue-number>-<repository>-<title-of-user-story-using-dashes>.mp4`

Upload the demo file to Operations by editing and attaching to the latest [Sprint Release]. Then copy the link and paste it under the Expections section of the User Story.

Some recommended screencast applications:
 * Linux: `vokoscreen` or `green-recorder` (Wayland compatible)
 * MacOS: QuickTime (Ideally compress `mov` to `mp4`)


## Issue Labels

Descriptive labels:

 * <a name="label_feature"></a>**Feature**: a user-facing or support-facing improvement, addition
 * <a name="label_cleanup"></a>**Cleanup**: something that increases our velocity
 * <a name="label_bug"></a>**Bug**: a user-facing or support-facing annoyance
 * <a name="label_ongoing"></a>**Ongoing**: long-running tasks, are not in sprints, see [Ongoing Tasks](#ongoing-tasks)
 * <a name="label_sanity_check"></a>**Sanity Check**: Results of automatic checks of production data, more on TODO.
 * <a name="label_operations"></a>**Operations**: operations related task, such as adding and improving internal docs, processes, etc.
 * <a name="label_support"></a>**Support**: user-facing maintenance work, not included in sprints, such as fixing subscription problems, resetting passwords, re-enabling accounts, etc.
 * <a name="label_people"></a>**People**: internally-facing maintenance work, not included in sprints, such as hiring, onboarding, etc.

Scrum labels:

* <a name="label_priority_lane"></a>**Priority Lane**: User Stories injected into the current sprint due to urgency
* <a name="label_retrospective"></a>**Retrospective**: issues that describe the sprint retrospective

[Marketing Personas]: https://intra.niteoweb.com/operations/personas
[Sprint Release]: https://github.com/niteoweb/operations/releases/tag/sprint_13
