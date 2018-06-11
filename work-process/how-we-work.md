# How we work

Niteo is a distributed team spread around the World. While we rent office space in Ljubljana, Slovenia, most of us work remotely. Here's a quick overview of how we work and communicate.

## Communication

Instant messaging is done through Slack on different channels (operations, support, development etc.). We have [daily standups](standup.md) on Zoom, each morning, where everyone has a minute or two to say what they’re working on and if they need any help.

Twice a month, senior team members have [“catchups” (better known as 1-on-1)](../people/catchup-meetings.md) with everyone on the team to keep themselves in the loop.

About once or twice a year we fly the whole team somewhere nice and we’ll have an *IRL* (in-real-life) meetup. Here we discuss company status, projects and the future in a group setting. IRLs normally happen in January and in July, perfect timing to review the (half-)year. Every Nitean is encouraged to attend in person, but we provide remote access as well. It's OK to remotely attend an IRL every now and then, but generally we expect everyone to be there in person.

In addition there are ad-hoc in-person meetups that happen about once or twice a month, as needed. Some of us might get together to watch a talk at a local conference or we go to lunch together to discuss project work.

## Project and company management

We work in 2-week Scrum Sprints described in detail in the [work process](work-process.md) document.

Project and task management is currently done with [GitHub](https://github.com/) and [ZenHub](https://www.zenhub.com/). Support handles tickets through [Groove](https://www.groovehq.com). We also have an internal document system (intranet) we call “Intra”, running on [Plone](https://plone.org/), where all our company processes and documents are stored.

We track cash flow with [Xero](https://www.xero.com/). Finance reports are published to intranet on a monthly basis and are viewable to all full-time team members.

Monthly company newsletter covers the main events of the month and is a great reference point for digging deeper into parts of the company one does not know that well.

## Development

Niteo runs several SaaS projects, serving a few thousand customers. We use several techniques, libraries and services that allow us to make several deploys to production every day. That does not mean that we do not test code before shipping it. Rather, we have a workflow that runs a variety of checks and automatic tests and makes it very fast and easy to test new features in staging environments.

And even if we do push buggy code to production, we only push it to a fraction of users to minimize impact. The outcomes are great: happy users, since they get features and fixes fast. And maybe even more importantly, happy developers, since the code is actually being used minutes after being merged rather than being stuck in a bureaucratic production deployment workflow. Nejc has [given](https://vimeo.com/110423315) [numerous](https://www.youtube.com/watch?v=HsGLLGeXFOU) [talks](https://www.youtube.com/watch?v=4GZcW19c4GM) on the subject.

## Setting goals and deciding what to work on

We subscribe to the [12-Week Year](https://12weekyear.com/) philosophy for planning and goals. Every beginning of the quarter we review what we’ve done and if we hit all goals. Then we plan sprints for the next 12 weeks (everything is of course viewable on our intranet). The time interval is just short enough for actual week-to-week plans while also being long enough to get things done.
