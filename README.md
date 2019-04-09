# PubTest - RWoT Documentation PoC

- [Quickstart](#quickstart)
- [Purpose](#purpose)
- [Git Configuration](#git-configuration)
- [Key Directories](#key-directories)
- [Community Engagement](#community-engagement)

# Quickstart

```
git clone git@github.com:korsimoro/pubtest
cd pubtest
./toolkit/setup.sh
. ./toolkit/activate.sh
./toolkit/ruby/setup.sh
. ./toolkit/ruby/activate.sh
tool
```

# Purpose

The purpose of this repository is to develop a publication technology for the
RWoT and other identity-tech community data with the following properties:


## [Repository Based](#repository-based)
  - *provenance* / *git audit trail*
    The git audit trail provides the skeleton for information provenance.

  - *data integration*
    the contents of the documentation should be derived deterministically
    from the the contents of the repository.  This allows us to guarantee
    that the information presented in the web site is bound to the audit
    trail.

## [Community Engagement](#community-engagement)
  - integrate with external data sources
    - Snapshots of chat and other feed data (calendars, etc.)
    - Embedded Visualizers
    - Embedded Forms
  - support moderated, timely publication, backed by an editorial actor

## machine processable rich data
  - normalize tabular data as sqlite files
  - use sql queries to generate reports
  - use graphql queries to generate reports
  - use git commit history exploration to generate reports
  - expose report data as yml, csv, and json for
    - our own consumption via \_data
    - reference data promoting distribution of machine readable data to other
      sites about data and make the results of this analysis readily digestable
      for publication purposes

## Proof of Concept - recording the exploration of mission support technologies
  - submodules - to access files from other repositories, linked to a specific point in their tracking history, which is available to us for inclusion in documentation
  - mkdocs - expected useful for some structured data and ad-hoc data sources
  - wordpress - it should be possible to do something with wordpress, but not sure what
  - sqlitebiter - helps normalize tabular data around a sqlite format
  - tool - our own shim, with whatever data transformation logic we want

## explore the use of git & github
  - issues tracking to coordinate our work and advance our ideas to completion
  - github pages for publication
  - circleci integration for CI/CD pipeline
  - use of submodules
  - use of git commit history in publication


# Git Configuration
- [CircleCI](#CircleCI Integration)
- [GitHub Pages](#CircleCI Integration)
- [branch: documentation](#CircleCI Integration)
- [branch: master](#CircleCI Integration)

## CircleCI Integration
- https://circleci.com/gh/korsimoro/pubtest/tree/documentation
- commits to 'documentation' branch will trigger the workflow in ".circleci/config.yml"

The ```.circleci/config.yml``` file associates a command with a branch name, so we can run different
commands depending upon updates to any branch.

## GitHub Pages Integration

publication to 'master' branch will trigger jekyll run and publish the result.
This is due to serving the repository via github pages.  As a result we get a
"free, well maintained, powerful" step that will process our 'master' branch,
and in particular, the 'docs' directory and publish the result for global\
visibility.

### branch: documentation
the default branch is 'documentation'.

when documentation is to be released, you should commit to this branch.  That
will trigger the circle-ci preparation step followed by the github pages
publication step.

### branch: master
ideally the 'master' branch will be controlled, and the state of master should
always match the deployed website.

This means we want to manage our updates to master as much as possible, and
refrain, as much as possible, from committing directly to master.

This effectively makes "releasing the repo" equivalent to "publishing the
documentation", which is a nice parity to have for any project!


# PoC

All of the PoC components can be ignored, but they
demonstrate the sorts of tools we should consider
within reach.

## mkdocs

everything mentioning mkdocs can be
safely ignored.  We are leaving it in
because it is working, and there are documentation
subsets for which it might be very useful.  It
does not play any role in the main deployment.

The mkdoc sandbox is visiable
at ```/pubtest/mkdocs/index.html``` when deployed.

## tool's query system

This has proven useful to me.  It is equivalent to "frozen views" in classic rdbms, but the views are written out as CSV, JSON, and YML and locked to an audit trail via the supporting git repository.

## wordpress
We could integrate with wordpress

## presentation of git commit logs
Exposing the ```chain of provenance``` of information is of critical importance in the identity-tech universe.

Since the data is ultimately *published* from git, via github pages, then it makes sense for the provenance chain to be rooted in the git commit history.  This gives you 'tree-hashes' linked to an audit trail, which can, ultimately be linked to the ecosystem of DIDs and VCs.

DIDs should be mappable to "git repository states" in a very decentralized manner.  One could even imagine a did:git:\* method ;)



# Key Directories

## docs/assets/mkdocs

These are the markdown source files for mkdocs.

## docs/mkdocs

This is what gets served vi ```/pubtest/mkdocs```

## \_data/sqlite

This contains of the following structure

      /[db-name]
        database.sqlite
        [query].sql
where the database.sqlite file a sqlite database.
This can come from any source and
- can be managed using standard SQL utilities
- can be generated as a snapshot from googlesheets
  or other CSV data via ```sqlitebiter```
- can be pulled by scraping websites via ```sqlitebiter```

## \_data/[db-name]\_[query].yml

This will

# Toolkit
- [```tool```](#tool)
- [```sqlitebiter```](#sqlitebiter)
- [```mkdocs```](#mkdocs)

## ```tool```

```
(venv) pubtest> tool
Usage: tool [OPTIONS] COMMAND [ARGS]...

  Simple utilities to massage data in the repo.

Options:
  --dir TEXT  Base Directory (Checkout)
  --help      Show this message and exit.

Commands:
  db-schema-table    Dump schema
  db-schema-to-yaml  Extract schema from sqlite and place as _data.
  db-to-yaml         Extract data from sqlite and place as _data.
```

## ```sqlitebiter```

```
Usage: sqlitebiter [OPTIONS] COMMAND [ARGS]...

Options:
  --version                       Show the version and exit.
  -o, --output-path PATH          Output path of the SQLite database file.
                                  Defaults to 'out.sqlite'.
  -a, --append                    Append table(s) to existing database.
  --add-primary-key PRIMARY_KEY_NAME
                                  Add 'PRIMARY KEY AUTOINCREMENT' column with
                                  the specified name.
  --convert-config TEXT           [experimental]
                                  Configurations for data
                                  conversion. The option can be used only for
                                  url subcommand.
  -i, --index INDEX_ATTR          Comma separated attribute names to create
                                  indices.
  --no-type-inference             All of the columns assume as TEXT data type
                                  in creating tables.
  --type-hint-header              Use headers suffix as type hints.
                                  If there
                                  are type hints, converting columns by
                                  datatype corresponding with type hints.
                                  The
                                  following suffixes can be recognized as type
                                  hints (case insensitive):
                                  "text": TEXT
                                  datatype.
                                  "integer": INTEGER datatype.
                                  "real": REAL datatype.
  --replace-symbol TEXT           Replace symbols in attributes.
  -v, --verbose
  --debug                         For debug print.
  -q, --quiet                     Suppress execution log messages.
  -h, --help                      Show this message and exit.

Commands:
  completion  A helper command to setup command completion.
  configure   Configure the following application settings: (1) Default...
  file        Convert tabular data within CSV/Excel/HTML/JSON/Jupyter...
  gs          Convert a spreadsheet in Google Sheets to a SQLite database...
  url         Scrape tabular data from a URL and convert data to a SQLite...
```

## mkdocs

```
(venv) pubtest> mkdocs
Usage: mkdocs [OPTIONS] COMMAND [ARGS]...

  MkDocs - Project documentation with Markdown.

Options:
  -V, --version  Show the version and exit.
  -q, --quiet    Silence warnings
  -v, --verbose  Enable verbose output
  -h, --help     Show this message and exit.

Commands:
  build      Build the MkDocs documentation
  gh-deploy  Deploy your documentation to GitHub Pages
  new        Create a new MkDocs project
  serve      Run the builtin development server
```
# Repository Based

# Community Engagement

This documentation data model provides access to the people and organizations
impacted by this information, however, it does so through the filtering of
a group of curators and the integration of feedback and other channels.


## Representation over direct democracy

This model favors the publication of information by a sponsoring organization.

For example, when Rebooting the Web of Trust publishes information about the
proceedings at one of the events, that should be the prerogative of RWoT.

This provides substantial utility, in that we can tie the act of a repository
owner, updating a branch, into a set of automatic processing, including, as
a final stage, the publication of an updated website based on the information
in the repository.

However,

integrate with external data sources
(like Forms, or chats)
support moderated, timely publication, backed by an editorial actor
