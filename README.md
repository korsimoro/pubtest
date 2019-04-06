
# Quickstart

```
git clone git@github.com:korsimoro/pubtest
cd pubtest
./toolkit/setup.sh
. ./toolkit/venv/bin/activate
tool
```

# Notes
- *mkdocs* everything mentioning mkdocs can be
  safely ignored.  We are leaving it in
  because it is working, and there are documentation
  subsets for which it might be very useful.  It
  does not play any role in the main deployment.

  The mkdoc sandbox is visiable
  at ```/pubtest/mkdocs/index.html``` when deployed.


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

## Sqlitebiter

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
