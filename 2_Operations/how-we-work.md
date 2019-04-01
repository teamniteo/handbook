# How We Work

Niteo is a distributed team spread around the World. Here's a quick overview of how we work and communicate.

## Communication

Instant messaging is done through Slack on different channels (operations, support, development etc.). We have daily standups on Zoom, each morning, where everyone has a minute or two to say what they’re working on and if they need any help.

Twice a month, senior team members have [Catchups](../5_People/catchups.md) with everyone on the team to keep themselves in the loop.

About once or twice a year we fly the whole team somewhere nice and we’ll have an *IRL* (in-real-life) meetup. Here we discuss company status, projects and the future in a group setting. IRLs normally happen in January and in July, perfect timing to review the (half-)year. Every Nitean is encouraged to attend in person, but we provide remote access as well. It's OK to remotely attend an IRL every now and then, but generally we expect everyone to be there in person.

In addition there are ad-hoc in-person meetups that happen about once or twice a month, as needed. Some of us might get together to watch a talk at a local conference or we go to lunch together to discuss project work.

## Project And Company Management

We work in 2-week Scrum Sprints described in detail in the [work process](work-process.md) document.

Project and task management is currently done with [GitHub and ZenHub](/2_Operations/apps.md). Support handles tickets through Intercom.

We track cash flow with [Xero](https://www.xero.com/). Finance reports are published to [niteoweb/finances](https://github.com/niteoweb/finances) on a monthly basis and are viewable to all full-time team members.

Monthly company newsletter covers the main events of the month and is a great reference point for digging deeper into parts of the company one does not know that well.

## Development

Niteo runs several [SaaS projects](/1_Projects/projects.md), serving a few thousand customers. We use several techniques, libraries and services that allow us to make several deploys to production every day. That does not mean that we do not test code before shipping it. Rather, we have a workflow that runs a variety of checks and automatic tests and makes it very fast and easy to test new features in staging environments.

And even if we do push buggy code to production, we only push it to a fraction of users to minimize impact. The outcomes are great: happy users, since they get features and fixes fast. And maybe even more importantly, happy developers, since the code is actually being used minutes after being merged rather than being stuck in a bureaucratic production deployment workflow. Nejc has [given](https://vimeo.com/110423315) [numerous](https://www.youtube.com/watch?v=HsGLLGeXFOU) [talks](https://www.youtube.com/watch?v=4GZcW19c4GM) on the subject.

## Setting Goals

We plan and think in quarters. Every beginning of the quarter we review what we’ve done and if we hit all goals. Then we plan goals for the next quarter. A quarter is just short enough for actual plans while also being long enough to get things done.
