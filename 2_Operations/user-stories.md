# User Stories

User Stories are well-defined tasks to be done by a Nitean that have a specific, measurable goal and impact. The vast majority of issues are written as User Stories, and only issues created by support that are reactionary and straightforward are not.

Once important enough, all User Stories go into the project's repository.
- EBN project: [`teamniteo/easyblognetworks`](https://github.com/teamniteo/easyblognetworks/)
- Niteo House project: [`teamniteo/house`](https://github.com/teamniteo/house/)
- Pareto project: [`teamniteo/pareto`](https://github.com/teamniteo/pareto/)
- SEO Domain Finder project: [`teamniteo/sdf`](https://github.com/teamniteo/sdf/)
- Company issues: [`teamniteo/operations`](https://github.com/teamniteo/ops/)

We have many repositories for each project but we write all User Stories in the main repository.

## Writing a User Story

To create a User Story, we open a new issue in the project repositories or the Operations repository if it is unrelated to a specific project. In all three repositories, an issue template is provided to guide you through the process.

To make the Stories more inclusive, we prefer using [Singular they](https://en.wikipedia.org/wiki/Singular_they) instead of `he`, `himself`, etc.

### Summary

The opening lines of a User Story are to be written in simplified, layman's terms for the whole team to understand. The viewpoint of a persona is to be used to understand the use-case fully.

 > As a *persona*, I want ..., so that ...

Whenever possible, think about the end user (product persona) and how the result impacts them. Other possible personas are Nitean, Support, Developer, Marketer, and DevOps. That said, it's rare for anything to be done without the user in mind.

### Description

Write in as much detail as possible, add mockups, previous discussion, etc. What are you trying to fix or do? Why are you doing it and what happens if you don't? Provide further information with screenshots or links.

Write technical details on how to accomplish this proposal. Add references to any previous discussions of the proposal. Provide links to related information, such as existing User Stories. Assign anyone that you need feedback from, for this User Story.

Finally, take a bit of time to consider at least one pitfall (downside) to implementing the proposed changes. So what could go wrong or how could it affect other systems?

### Best practices (Definition of Done)

The Best Practices are a list of items that should relate to the Story and guide the writing of the Expectations for completion of the Story.

All major features should have a blog post written. If you are not sure if it should be written or not, ask the project lead. The marketing team writes and reviews the details of the actual blog post.

### Expectations (Acceptance Criteria)

The expected outcomes of the User Story which is a list of items stating how the world will look once the User Story has been completed. This is not the individual task or activities but rather what will the documentation look like, what new tests will we see, what bug no longer occurs because it has been fixed.

## Story Points

A [Story Point](https://agilefaq.wordpress.com/2007/11/13/what-is-a-story-point/) is an arbitrary measure used by Scrum teams to indicate the effort required to implement a User Story. Story points are not a representation of time, but rather a combination of Risk, Repetition, and Complexity. However, we typically think of one story point as the amount of work a person can do in one day.

## Pipelines

From initial creation to being worked on and finally closed, a User Story will be moved to different pipelines as it progresses through the Kanban board. This is a summary of the workflow of a User Story:

1. **New Issues** - New work-in-progress (WIP) User Stories, also includes bugs or issues.
1. **Estimation** - Defined User Stories, ready for verifying and Story point estimation.
1. **Backlog** - Waiting to be started. They are adequately defined with assigned Story points and are typically also assigned to a Nitean.
1. **This Week** - The selection of work items to be done this week.
1. **In Progress** - Currently being worked on by the assignee.
1. **Review** - Completed with a demo uploaded and awaiting final review.
1. **Done** - All defined expectations have been met.

### Estimation

For the User Story to be moved to the **Backlog**, it must be verified and voted upon. To start this process put the User Story in the **Estimation** pipeline.

The project lead will verify that the User Story is well defined. If required they will assign people from whom they want to receive feedback for better definition of the User Story. Once these assignees post their feedback, they remove their assignment from the User Story.

#### Voting

Once the User Story is verified the author assigns team members from whom they want to receive Story point estimations. Team members vote on a Story by adding a comment with their Story point estimation to the User Story, then remove their assignment from the User Story.

To not influence anyone else's voting, we hide these estimate values in comments by using the following code snippet:

```
<details>
  <summary>Story Point estimate</summary>
  SP:
</details>
```

*This snippet can be added to GitHub [saved replies](https://github.com/settings/replies) for reuse.*

### Backlog

After a User Story in **Estimation** pipeline has been voted upon, the project lead checks for consensus on the Story points and sets the estimation to that value then moves the User Story to the **Backlog** pipeline.

With a well-defined Story and Story points, the User Story is now ready to be worked on.


## Assignment

You are assigned to a User Story or issue when something is required from you:

- Provide feedback to further the User Story.
- Estimate the Story Points needed to complete the User Story.
- Work on the User Story to complete the expected goals.

You must keep your assignment to the User Story from when you work on it until it is reviewed and closed. This allows us to see who worked on what even when the User Story is closed.

## Demos

When a User Story is completed a short screencast is required to demonstrate that the goals of the Story were achieved. Make the demo as short as possible (< 1min) and focus on the result of the Story and not so much on how you've done it.

## Final Review

We don't close our own User Stories: we always want to have another person look over it before closing, just in case we missed something. To do this, when you're done with your work, put the story into Review state and wait for someone else to close it.
