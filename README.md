# handbook
The Niteo Handbook

Use label [Bug](#label_bug) for changes to the document.




Issue Labels
------------

Descriptive labels:

 * `Feature`: new features
 * `Cleanup`: cleanup
 * `Bug`: bug
 * `Ongoing`: ongoing tasks, are not in scrum


Project labels:

 * `EBN`: Easy Blog Networks project 
 * `DMON`: Easy Domain Monitor project 

Department labels:

 * `Operations`: Operations
 * `Marketing`: Marketing
 * `Support`: Support
 * `People`: People

Scrum labels:

 * `Needs User Story`: when User Story is first opened, it needs to be defined by all stakeholders
 * `Needs Story Points`: when User Story is defined, it needs story points from potential champions
 * `Product Backlog`: when User Story is defined and has story points, it gets marked for Product Backlog
 * `Priority Lane`: if there is a user story that needs to be done urgently
 * `Retrospective`: issues that describe the sprint retrospective




Development Process
-------------------

Our development process is based on Scrum, but modified slightly to apply better to our specific needs:

 * we don't do customer projects, we are our own Product Owners
 * we currently don't use additional tools other than GitHub Issues which we already use

Undefined issues are created in various repositories. Support issues stay in project-related repositories and are not included in any sprints. Any kind of development work goes into sprints. Sprint is managed from the Operations repository.

In Operations repository when you open an issue, it has a template that helps you define the User Story. User Story in this step is labelled with `Needs User Story`, a descriptive label, project label and department label. The Scrum Master and Product Owner assign people from whom they want to receive feedback for better definition of the User Story. Once they agree it's well defined, they remove the label `Needs User Story` and label it `Needs Story Points`.

In the step `Needs Story Points`, Scrum Master assigns the User Story to people from whom s/he wants to receive Story Point estimation. Once this is agreed, s/he adds a Story Point label to title (http://unicode.org/emoji/charts/full-emoji-list.html#keycap), removes the `Needs Story Points` label and adds label `Product Backlog`. This User Story can now be added to Kanban Board Product Backlog for review on next sprint.

If we need to fix an urgent bug, we use the Scrum Priority Lane approach. This means that the User Story still needs to get written and if the Product Owner decides it really is urgent, the User Story is added to the top of Work In Progress column and labeled with `Priority Lane` so that everyone knows this is exceptional and the whole team needs to focus on getting this User Story to Done ASAP.

We also have ongoing label for ongoing tasks. These tasks do not get included in sprints, but we acknowledge them by decreasing our sprint story points limit.

