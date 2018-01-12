# How We Manage Documentation

We use the following services for storing information:

- **[GitHub](https://github.com/niteoweb)** - Code repository and ticketing system for all our projects, also hosts this Handbook where we write all company processes that can be publicly published.
- **[ZenHub](https://www.zenhub.com/)** - Agile project management within GitHub. Adds better predictability and visibility to software development.
- **[Intra](https://intra.niteoweb.com)** - Project documentation, team members profiles, reports and anything else that cannot be publicly published on the Handbook.
- **[collective.permalink](https://pypi.python.org/pypi/collective.permalink)** - an extension for **[Intra](https://intra.niteoweb.com)** that creates a persistent link to the Intra's content that should never change even if you rename or move it. Use it every time you need to reference some Intra content from the outside of Intra, like from the Handbook. To get a permalink click on Plone toolbar `Actions` > `Permalink (to Clipboard)`.
- **[Docs](http://docs.niteoweb.com)** - Technical documentation for projects, generated automatically by Sphinx on every code change.
- **[Books](http://books.niteoweb.com)** - Every time we buy a book, it goes into our digital library. Enjoy.
- **[Videos](http://videos.niteoweb.com)** - A collection of videos of our talks on public and private events, conferences, meetups, IRLs, etc.
- **[Grafana](niteo.grafana.net)** - Company and project dashboards.
- **[Zoho Docs](https://docs.zoho.eu/home)** - Alternative to Google Docs. Mostly used for spreadsheets.
- **[Resilio](https://github.com/niteoweb/handbook/blob/master/resilio.md)** - Works similar to Dropbox, but is faster and more secure because it does not require a central (cloud) server.
- **[1Password](https://my.1password.com/)** - All passwords and keys are stored in 1Password team account.

## What Goes Where?

Guidelines on which information goes where.

### All Tasks

- Any and all tasks need a GitHub issue, either in project repository or under one of the department ones, like Operations or Marketing.

### Development

- Development workflow, guidelines, instructions and conventions are available at [docs.niteoweb.com](http://docs.niteoweb.com/pyramid_bimt/process.html). You can add/update the documentation in `pyramid_bimt` repository under `/docs`.

### Support

- Checklists, support documentation and other support documents should go to the [Support repo](https://github.com/niteoweb/support/), in the specific project folder.
- General documentation should be posted to [Handbook](https://github.com/niteoweb/handbook).

### Marketing

- Advertising reports and links to private spreadsheets should be posted on [Intra](https://intra.niteoweb.com), in the specific project folder.

### Operations

- Finance reports and meeting minutes should be posted on [Intra](https://intra.niteoweb.com).
- Company work processes and general documentation should be posted to [Handbook](https://github.com/niteoweb/handbook).

### Handbook

- Checklists for operational issues should be stored in
`.github/ISSUE_TEMPLATES` and then linked to in the Handbook, for example:

    `https://github.com/niteoweb/operations/issues/new?template=onboarding-trialist.md&title=Onboarding:%20FirstName%20LastName&label=people`

- Any templates for emails, contracts, etc. should be stored in the Handbook's
`templates` directory.
