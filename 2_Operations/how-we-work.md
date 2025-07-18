# How We Work

Niteo is a distributed team spread around the World. Here's a quick overview of how we work and communicate.

## Communication

Written communication can sometimes be misinterpreted and could lead to the other person's heart rate going up for no reason. 

A bad example of this can be: 
> "Hey, do you have some time to talk?".

If a senior Nitean sent such a message to a trialist, they might interpret it as "Oh no, I did something wrong" and start stressing out completely unnecessarily since the senior Nitean just wanted to ask them if they have any dietary or other preferences for the upcoming IRL.

Or imagine sending over:
> Hey, do you have some time to talk on Monday?.

There goes the weekend!

To avoid that, we encourage Niteans to state what they want from the other person, what they would like to talk about, and where they would like to talk about it, e.g. chat, voice, or video.

A good example of this can be:
> "Hey, I'd like your opinion on which approach is better for the project. Can we meet on Zoom?".

Instant messaging is done through Slack on different channels (operations, support, development etc.). We have weekly all-hands on Zoom every Monday at 13 CE(S)T, where we plan the week ahead. 

Once a month, senior team members have [Catchups](../5_People/catchups.md) with everyone on the team to keep themselves in the loop.

Twice a year we fly the whole team somewhere nice and we’ll have an *IRL* (in-real-life) meetup. Here we discuss company status, projects and the future in a group setting. IRLs normally happen in January and in July, perfect timing to review the (half-)year. Every Nitean is encouraged to attend in person, but we provide remote access as well. It's OK to remotely attend an IRL every now and then, but generally we expect everyone to be there in person.

In addition there are ad-hoc in-person meetups that happen every now and then. Some of us get together to watch a talk at a local conference, to eat lunch together while discussing project work or to hike a nearby hill.

## Project And Company Management

We organize our work using a Kanban board which is described in detail in the [work process](work-process.md) and [kanban](kanban.md) documents.

Task management is done with [GitHub Projects](/2_Operations/apps.md). Support handles tickets through [Help Scout](https://www.helpscout.com/).

Monthly company newsletter covers the main events of the month and is a great reference point for digging deeper into parts of the company one does not know that well.

We track cash flow with [Xero](https://www.xero.com/). Finance reports are published as part of the monthly newsletter and are viewable to all full-time Niteans.


## Development

Niteo runs several [SaaS projects](/1_Projects/projects.md), serving a few thousand customers. We use various techniques, libraries and services that allow us to make multiple deploys to production every day. That does not mean that we do not test code before shipping it. Rather, we have a workflow that runs a variety of checks and automatic tests and makes it very fast and easy to test new features in staging environments.

And even if we do push buggy code to production, we only push it to a fraction of users to minimize impact. The outcomes are great: happy users, since they get features and fixes fast. And maybe even more importantly, happy developers, since the code is actually being used minutes after being merged rather than being stuck in a bureaucratic production deployment workflow. Nejc has [given](https://vimeo.com/110423315) [numerous](https://www.youtube.com/watch?v=HsGLLGeXFOU) [talks](https://www.youtube.com/watch?v=4GZcW19c4GM) on the subject.

## Setting Goals

Each year at the winter IRL, we set our yearly goals. Then, every quarter, we break them down into manageable [OKRs](https://en.wikipedia.org/wiki/Objectives_and_key_results). At the end of each quarter, we review our progress and see how much we accomplished. Based on that, we plan the OKRs for the next quarter. A quarter strikes the right balance of being short enough to plan effectively, but long enough to make real progress.
