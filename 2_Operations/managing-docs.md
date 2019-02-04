# How We Manage Documentation

We use the following services for storing information:

- **[GitHub](https://github.com/niteoweb)** - Code repository, company and project documentation, and ticketing system for all our projects.
- **[ZenHub](https://www.zenhub.com/)** - Agile project management within GitHub.
- **[Books](http://books.niteo.co)** - Our digital library.
- **[Videos](http://videos.niteo.co)** - A collection of videos of our talks in public and private events, conferences, meetups, IRLs, etc.
- **[Grafana](http://niteo.grafana.net)** - Company and project dashboards.
- **[Zoho Docs](https://docs.zoho.eu/home)** - Alternative to Google Docs, mostly used for spreadsheets.
- **[Resilio](https://www.resilio.com/)** - Similar to Dropbox, but faster and more secure.
- **[1Password](https://my.1password.com/)** - All passwords and keys are stored in 1Password team account.

## What Goes Where?

Guidelines on which information goes where.

### All Tasks

- Any and all tasks need a GitHub issue, usually inside a project repository.

### Development

- Development workflow, guidelines, instructions and conventions are available on docs.niteo.co.

### Support

- Project support documentation and related documents are in the Support folder, within the specific project repository.
- General support documentation is published to Handbook.

### Marketing

- Advertising reports and links to private spreadsheets are in GitHub issues.

### Operations

- Finance reports are published on [niteoweb/finances](https://github.com/niteoweb/finances).
- Company work processes and general non-sensitive documentation is published to Handbook.

### Handbook

- Checklists for operational issues should be stored in
`.github/ISSUE_TEMPLATES` and then linked to in the Handbook, for example:

    `https://github.com/niteoweb/operations/issues/new?template=onboarding-trialist.md&title=Onboarding:%20FirstName%20LastName&label=people`

- Any templates for emails, contracts, etc. should be stored in the Handbook's `templates` directory.
