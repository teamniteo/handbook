# User Stories

User Stories are well-defined tasks to be done by a Nitean that have a specific, measurable goal and impact. The large majority of issues are written as User Stories and only issues created by support that are reactionary and straightforward are not. Support issues are also not included in sprints.

## Writing a User Story

To create a new user story, open a [new issue](https://github.com/niteoweb/operations/issues/new) in the Operations repository and you will find a template is provided to guide you through the process. If you need to create a user story in another repository you will need to copy and paste over this Operations template.


### Summary

The opening lines of a user story are to be written in simplified, layman's terms for the whole team to understand. The viewpoint of a persona is to be used to fully understand the use-case.

 > As a *persona*, I want ..., so that ...

Whenever possible, think about the end user (product persona) and how the result impacts them. Other possible personas are Nitean, Support, Developer, Marketer and DevOps. That said, very rarely is something not done directly for the user.

### Description

Write in as much detail as possible, add mockups, previous discussion, etc. What are you trying to fix or do? Why are you doing it and what happens if you don't? Provide further information with screenshots or links.

Write technical details on how to accomplish this proposal. Add references to any previous discussions of the proposal. Provide links to related information, such as existing User Stories. Assign anyone that you need feedback from, for this user story.

Finally, take a bit of time to consider at least one pitfall (downside) to implementing the proposed changes. So what could go wrong or how could it affect other systems?

### Best practices (Definition of Done)

The Best Practices are a list of items that should relate to the story and guide the writing of the Expectations for completion of the story.

All major features should have a blog post written. If you are not sure if it should be written or not, ask the Scrum master or product owner. The marketing team writes and reviews the details of the actual blog post.

### Expectations (Acceptance Criteria)

The expected outcomes of the user story which is a list of items stating how the world will look once the user story has been completed. This is not the individual task or activities but rather what will the documentation look like, what new tests will we see, what bug no longer occurs because it has been fixed.

## Story points

A [story point](https://agilefaq.wordpress.com/2007/11/13/what-is-a-story-point/) is an arbitrary measure used by Scrum teams to indicate the effort required to implement a User Story. One full-time member on sprint should be able to do 10 Story Points.

## Pipelines

From initial creation to being worked upon and finally closed, a user story will be moved to different pipelines as it progresses through a sprint. This is a summary of the workflow of a user story:

1. **New Issues** - New work-in-progress (WIP) user stories, also includes bugs or issues.
1. **Estimation** - Defined user stories, ready for verifying and story point estimation.
1. **Backlog** - Waiting for inclusion in a sprint. They are properly defined with assigned story points.
1. **To Do** - In the current sprint with a champion assigned to work on it.
1. **In Progress** - Being worked upon by the champion during the current sprint.
1. **Review** - Completed with a demo uploaded and awaiting final review.
1. **Closed** - All defined expectations have been met.

### Estimation

After writing the user story, in order for inclusion in a sprint, it must be verified and voted upon. To start this process put the user story in the `Estimation` pipeline.

The Scrum master and product owner will verify that the user story is well defined. If required they will assign people from whom they want to receive feedback for better definition of the user story. Once these assignees post their feedback, they remove their assignment from the user story.

#### Voting

Once the user story is verified the Scrum master assigns team members from whom they want to receive story point estimations. Team members vote on a story by adding a comment with their story point estimation to the user story, then remove their assignment from the user story.

A Nitean who is full-time on a sprint should be able to finish 10 story points.

So as to not influence anyone else's voting, we hide these estimate values in comments by using the following code snippet:

```
<details>
  <summary>Story Point estimate</summary>
  SP:
</details><br>
```

*This snippet can be added to GitHub [saved replies](https://github.com/settings/replies) for reuse.*

### Backlog

After a user story in `Estimation` pipeline has been voted upon, the Scrum master checks for consensus on the story points and sets the `Estimate` label to that value then moves the user story to the top of the `Backlog` pipeline.

With a well-defined story and story points, the user story is now ready to be included in the next sprint.


## Assignment

You are assigned to a user story or issue when something is required from you:

- Provide feedback to further the user story.
- Estimate the story points required to complete the user story.
- Champion the user story in a sprint.

You must keep your assignment if the user story is included in the current sprint and is already in progress. This allows us to see who worked on what even when the sprint ends. However if the user story is not in the current sprint and your task is complete, you may remove your assignment and unsubscribe from notifications.

## Demos

When a user story is completed a short screencast is required to demonstrate that the goals of the story were achieved. Make the demo as short as possible and focus on the result of the Story and not so much on how you've done it.
