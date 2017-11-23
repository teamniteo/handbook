# Trial Onboarding Issue Template

```
Hello and welcome to Niteo! If you have not done so yet, please read https://github.com/niteoweb/handbook/blob/master/onboarding.md to get an idea of what this is.


Gearing up
==========

### Email Setup
* [ ] A member of the @niteoweb/peopleops team will create your very own `<initials>@niteo.co` email address. Use it for all Niteo-related communication, internally and with third-party contacts. Please ask if you would prefer a different address.
* [ ] We use S/MIME encryption for all email communication so install a desktop-based email client that supports S/MIME encryption e.g.  Apple Mail or Mozilla Thunderbird. *(Please do not use Web-based clients)*.
* [ ] Generate a [free Comodo Certificate](https://www.comodo.com/home/email-security/free-email-certificate.php) *(Chrome users: There were past problems with Comodo's form, try using Firefox if nothing happens)*.
* [ ] Configure S/MIME encryption for your email client. You will need to Google configuration details for your particular email client and verify that encryption works by emailing someone from the @niteoweb/peopleops team.
* [ ] Set up your [email signature](https://github.com/niteoweb/handbook/blob/master/onboarding.md). Google how to do it for your email client of choice. Choose whatever title you want.
* [ ] Upload your photo for your @niteo.co email on [Gravatar](https://en.gravatar.com/). Please use a photo where your face is visible. We are a remote team and having a cat for the avatar does not help in building a relationship with others.
* [ ] Add your @niteo.co email to your [GitHub account](https://help.github.com/articles/adding-an-email-address-to-your-github-account/).

### Team Communication
* [ ] Signup to [Zoom](https://zoom.us/signup), our video conferencing software.
* [ ] Signup to [Slack](https://join.slack.com/niteoweb/signup). This is our Team Chat and please use your GitHub username as your display name.
* [ ] Read [Using Slack](https://github.com/niteoweb/handbook/blob/master/using-slack.md). Take some time to read through old messages in main channels to get an idea of how we function.
* [ ] Signup to [Grammarly](https://www.grammarly.com/). This ensures all our correspondence has the correct US English spelling and grammar.
* [ ] Introduce yourself by saying 'Hi' and writing a sentence about yourself in the #operations Slack channel.

### VPN and Intra
* [ ] With email setup, now configure the OpenVPN secure tunnel so you can connect to our internal services. Mac users should install `Tunnelblick` app and Linux users the `openvpn` package. Then ask @zupo (post comment to this issue) to email you the OpenVPN configuration files, which you normally double-click on and follow the instructions.
* [ ] Once connected to our VPN you will be able to access https://intra.niteoweb.com/. Ask @niteoweb/peopleops (post comment to this issue) to create an account for you along with your [Team Member Page](https://intra.niteoweb.com/people/team-members) on Intra. Your login credentials will arrive in a separate email.


Time for some reading up!
-------------------------------

* [ ] Thoroughly read through our [Handbook](https://github.com/niteoweb/handbook).
* [ ] Watch the initial [State of Niteo](http://videos.niteoweb.com.s3.amazonaws.com/IRL%231%2F%5BIRL%231%5D%20State%20of%20NW.mp4) talk from our first In-Real-Life meet  ([talk slides](http://videos.niteoweb.com.s3.amazonaws.com/IRL%231%2F%5BIRL%231%5D%20State%20of%20NW%20-%20SLIDES.pdf)).
* [ ] Watch the most recent [IRL meet](http://videos.niteoweb.com.s3.amazonaws.com/IRL%233%2F%5BIRL%233%5D%20State%20of%20Niteo.mp4).
* [ ] Read a few of our latest [Newsletters](https://intra.niteoweb.com/operations/company-newsletter) to catch up on recent events.

Learn about our currently active projects:
 * [ ] [Easy Blog Network](http://docs.niteoweb.com/ebn/)
 * [ ] [Easy Domain Monitor](http://docs.niteoweb.com/dmon/)


Marketing Onboarding [REMOVE IF NOT APPLICABLE]
--------------------

TODO


Support Onboarding [REMOVE IF NOT APPLICABLE]
------------------
### Getting Started
* [ ] Go to Groove Settings, click on Profile and update what's necessary (name, title and add image).
* [ ] Learn how [support requeste are handled.](https://github.com/niteoweb/handbook/blob/master/support.md)
* [ ] See our policy on [dealing with users.](https://github.com/niteoweb/ebn-support/blob/master/dealing-with-users.md)

#### Easy Blog Networks
* [ ] You need to learn about the product. Read everything including those in the footer links on the [EBN sales page.](https://www.easyblognetworks.com/)
* [ ] Read through everything in the [ebn-support repository.](https://github.com/niteoweb/ebn-support)
* [ ] Go through all our [Help Articles.](https://help.easyblognetworks.com/)
* [ ] Read our [blog.](https://blog.easyblognetworks.com/)

Developers Onboarding [REMOVE IF NOT APPLICABLE]
---------------------
#### Light Listening
* [ ] Try out podcasts, listen to 5 episodes and see if they work for you. We recommend starting with [Podcast.\_\_init\_\_](https://www.podcastinit.com/), [FLOSS Weekly](https://twit.tv/shows/floss-weekly) and/or [The Tim Ferris Show](https://tim.blog/podcast/).

#### Development Methodology
* [ ] Read and understand how we build our apps based on the [Twelve-Factor](https://12factor.net) methodology.
* [ ] Watch [UncleBob Expecting Professionalism](https://www.youtube.com/watch?v=BSaAMQVq01E).
* [ ] Watch coding example of [Three laws of TDD](https://youtu.be/qkblc5WRn-U?t=27m7s) (from 27:00 to 43:00 marks).
* [ ] Read about the [Pylons Project](http://pylonsproject.org/about-pylons-project.html).
* [ ] Study [python-requests](http://python-requests.org) for an example of beautiful code, good API design and readable docs.
* [ ] Read about [git workflow](https://www.atlassian.com/git/tutorials/comparing-workflows#feature-branch-workflow).

#### Python
* [ ] Glance over [Fluent Python](http://books.niteoweb.com.s3.amazonaws.com/tech/Python/Fluent_Python.pdf).
* [ ] Read about writing Documentation in chapter 10 of [Expert Python Programing](http://books.niteoweb.com.s3.amazonaws.com/tech/Python/Expert%20Python%20Programming/Expert%20Python%20Programming%20(info@niteoweb.com).pdf) *(pass: `info@niteoweb.com`)*.
* [ ] Glance over [Type Hinting](https://docs.python.org/3/library/typing.html) and [Enums](https://docs.python.org/3/library/enum.html).
* [ ] Read about [mocking](https://www.toptal.com/python/an-introduction-to-mocking-in-python) in Unit Tests.
* [ ] Watch [PDB Like a Pro by Philip Bauer](https://www.youtube.com/watch?v=NKSW6pDX3Dc).
* [ ] Read about [Test Driven Development (TDD)](https://code.tutsplus.com/tutorials/beginning-test-driven-development-in-python--net-30137) in Python.
* [ ] Subscribe to [Planet Python](http://planetpython.org/) RSS feed. If you do not have an RSS reader, you can send it to your inbox with [IFTTT](https://ifttt.com/applets/147561p-rss-feed-to-email).

#### Sqlalchemy - SQL Toolkit
* [ ] Install with `pip install SQLAlchemy`.
* [ ] Follow the [introduction tutorial](http://pythoncentral.io/introductory-tutorial-python-sqlalchemy/).
* [ ] Read over [ORM examples](http://pythoncentral.io/sqlalchemy-orm-examples/).
* [ ] Read about [Association tables](http://pythoncentral.io/sqlalchemy-association-tables/).

#### Pyramid - Web Framework
* [ ] Read about [Pyramid](https://trypyramid.com/).
* [ ] Read about [Chameleon](https://chameleon.readthedocs.io/en/latest/) HTML/XML template engine.
* [ ] Follow the [Quick Tutorial](http://docs.pylonsproject.org/projects/pyramid/en/latest/quick_tutorial/index.html).

#### Test, Build, Deploy
* [ ] Read about [Travis CI](https://docs.travis-ci.com/user/for-beginners).
* [ ] Watch [Learn How We Deliver. Continuously. by Nejc Zupan](https://www.youtube.com/watch?v=4GZcW19c4GM)
* [ ] Glance over [Buildout](http://docs.buildout.org/en/latest/).
* [ ] Glance over [Heroko](https://devcenter.heroku.com/categories/heroku-architecture) deployment.
* [ ] Read about [makefiles in python projects](https://krzysztofzuraw.com/blog/2016/makefiles-in-python-projects.html).

#### Niteo Development Process
* [ ] Join the `#development` channel on Slack.
* [ ] Glance over [devs-macbook-from-scratch](https://blog.niteoweb.com/a-devs-macbook-from-scratch/) (mostly aimed at Mac users).
* [ ] Read about our [Development Process](http://docs.niteoweb.com/pyramid_bimt/process.html).
* [ ] Ensure all [Prerequisites](http://docs.niteoweb.com/pyramid_bimt/develop.html#prerequisites) are taken care of.
* [ ] Ask @niteoweb/peopleops to give you access to the [pyramid_bimt](https://github.com/niteoweb/pyramid_bimt) repository and `PYPICLOUD` credentials to access the [Internal PyPI server](https://intra.niteoweb.com/development/internal-pypi-server) by posting a comment on this issue.


On your first day
=================

* [ ] Join the Daily Standup meeting.
* [ ] Confirm the Intellectual Property Rights disclaimer with a comment in your onboarding issue.
* [ ] [Choose your first task](https://github.com/niteoweb/handbook/blob/master/next-task.md)! We strive to enable everyone to do something valuable the very first day, for example:
  - Developers will be pushing something into production.
  - Support staff will be answering a few support questions.
  - Marketing will be publishing their first advert.
```

## Intellectual Property Rights Disclaimer

Add a comment in your onboarding issue with this section, add your name in the two fields, read it and add “I agree” to the bottom.


```

**Client:** Niteo.co SI Ltd.
**Contractor:** [FirstName LastName]

# Intellectual Property Rights

## Product

All materials, including, but not limited to, software, programs, source code and object code, comments to the source or object code, specifications, documents, abstracts and summaries thereof (collectively, the “Products”) developed by Contractor in connection with the provision of the Services to Client, or jointly by Client and Contractor, or by Contractor pursuant to specifications or instructions provided by Client, shall belong exclusively to Client. Contractor acknowledges that the Products shall be deemed “works made for hire” by Contractor for Client, and, therefore, shall be the exclusive property of Client. To the extent the Products are not deemed “works made for hire” under applicable law, Contractor hereby irrevocably assigns and transfers to Client all right, title and interest in and to the Products, including, without limitation, all patent and copyright interests, and agrees to execute all documents reasonably requested by Client for the purpose of applying for and obtaining domestic and foreign patent and copyright registrations.


## Pre-existing Intellectual Property

Notwithstanding any provision of this Agreement to the contrary, any routines, methodologies, processes, libraries, tools or technologies created, adapted or used by Contractor in its business generally, including all associated intellectual property rights (collectively, the “Development Tools”), shall be and remain the sole property of Contractor, and Client shall have no interest in or claim to the Development Tools, except as necessary to exercise its rights in the Products. In addition, notwithstanding any provision of this Agreement to the contrary, Contractor shall be free to use any ideas, concepts, or know-how developed or acquired by Contractor during the performance of this Agreement to the extent obtained and retained by Contractor’s personnel as impression and general learning. Subject to and limited by Client’s intellectual property rights described in Section above, nothing in this Agreement shall be construed to preclude Contractor from using the Development Tools for use with third parties for the benefit of Contractor.

—

I agree - [FirstName LastName]

```
