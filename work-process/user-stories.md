# Issues and User Stories

## User Story overview

- In Operations repository when you open an issue, it has a template that helps you define the User Story.
- User Stories in this step must be moved into `Backlog` pipeline in ZenHub.
- Various labels are added, see [Issue Labels](#issue-labels).
- The Scrum Master and Product Owner verify if the User Story is well defined.
  *  they assign people from whom they want to receive feedback for better definition of the User Story.
  * Once these people post their feedback, they unassign themselves from the User Story.
- Once the Scrum Master and Product Owner agree that the User Story is well defined, they add ``✋ [vote]`` prefix to the title of the User Story. At that point, Scrum Master and/or Product Owner assign people from whom they want to receive User Story Points estimation. With this, online poker planning begins.
-  Assignees add their estimates in a comment with the following structure:
```
<details>
  <summary>Click to see estimate</summary>
  SP: (1, 2, 3, 5, 8, 13, 20, 100)
</details>
```
This is a simple "spoiler alert" block that prevents implicitly affecting others opinion.
- At the end of the online poker planning, Story Points are added to the User Story.
- The User Story is now prepared to be moved to the top of the User Story Pyramid stack.

**Important:**

* You are only assigned to a ticket when you need to do something:
    - Give feedback
    - Vote on Story Points
    - Champion working on the User Story
* Unassign yourself when you have done the above task you were assigned.


## Writing User Stories

When you open a new issue in Operations repository a template is provided will guide you through the process. To create a User Story in another repository you will need to copy and paste over this template from Operations.

### Story summary

The opening lines of a Story are to be written in simplified, layman's terms for the whole team to understand. The viewpoint of a persona is to be used to fully understand to use-case.

 > As a *persona*, I want ..., so that ...

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

## User Story Demos

When a User Story is completed a short screencast is required to demostrate that the goals of the story were achieved. These demos are primarily intended to be viewed at the Sprint retrospective and should contain a rough overview, along with any relevant or important information for the rest of the team. The more in-depth details can be posted in the comments to a User Story.

### Demo length
The length of the demos should be around 1 minute long but no more than 2 minutes.

### Filename template

The filename of the demos should have dashes replace any spaces, include issue number, using this template:

`<gh-repo>-<issue-no>-<Title-of-user-story>.mp4`

e.g. `dmon-312-Fix-domains-not-working.mp4`

### Upload
Upload the demo file to Operations by editing and attaching to the latest [Sprint Release]. Then copy the link and paste it under the Expections section of the User Story.

### Recommended apps:

Here are a few recommended screencast applications.

 * Linux
    * `vokoscreen`
    * `green-recorder` (Wayland compatible)
 * MacOS: QuickTime

*Note: On MacOS, QuickTime records uncompressed video so it is best to compress `mov` to `mp4` before uploading.*


## Issue Labels

### Descriptive labels

 * <a name="label_feature"></a>**Feature**: a user-facing or support-facing improvement, addition
 * <a name="label_cleanup"></a>**Cleanup**: something that increases our velocity
 * <a name="label_bug"></a>**Bug**: a user-facing or support-facing annoyance
 * <a name="label_ongoing"></a>**Ongoing**: long-running tasks, are not in sprints, see [Ongoing Tasks](work-process#ongoing-tasks)
 * <a name="label_sanity_check"></a>**Sanity Check**: Results of automatic checks of production data, more on TODO.
 * <a name="label_operations"></a>**Operations**: operations related task, such as adding and improving internal docs, processes, etc.
 * <a name="label_support"></a>**Support**: user-facing maintenance work, not included in sprints, such as fixing subscription problems, resetting passwords, re-enabling accounts, etc.
 * <a name="label_people"></a>**People**: internally-facing maintenance work, not included in sprints, such as hiring, onboarding, etc.

### Scrum labels

* <a name="label_priority_lane"></a>**Priority Lane**: User Stories injected into the current sprint due to urgency
* <a name="label_retrospective"></a>**Retrospective**: issues that describe the sprint retrospective

[Marketing Personas]: https://intra.niteoweb.com/operations/personas
[Sprint Release]: https://github.com/niteoweb/operations/releases/tag/sprint_13
