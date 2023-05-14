# How We Manage Documentation

We use the following services for storing information:

- **[GitHub](https://github.com/teamniteo)** - Code repository, company and project documentation, and ticketing system for all our projects.
- **[ZenHub](https://www.zenhub.com/)** - Agile project management within GitHub.
- **[Grafana](http://niteo.grafana.net)** - Company and project dashboards.
- **[Google Docs](https://docs.google.com/)** - Mostly used for spreadsheets.
- **[Dropbox](https://www.dropbox.com/)** - Cloud file sharing.
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

- Finance reports are published on [teamniteo/finances](https://github.com/teamniteo/finances).
- Company work processes and general non-sensitive documentation is published to Handbook.

### Handbook

- Checklists for operational issues should be stored in
`.github/ISSUE_TEMPLATES` and then linked to in the Handbook, for example:

    `https://github.com/teamniteo/operations/issues/new?template=onboarding-trialist.md&title=Onboarding:%20FirstName%20LastName&label=people`

- Any templates for emails, contracts, etc. should be stored in the Handbook's `templates` directory.
