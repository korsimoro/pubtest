# api

The API is defined by
  - ```ENTRYPOINT```
  - ```VAR_PREFIX```

## Variables

### Where Set

|Variable                   | Value                         |
|---------------------------|-------------------------------|
| VAR_PREFIX                | $( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )                              |
| VAR_PREFIX_KBASH           | $KBASH/api/util/kbash/state.sh           |
| VAR_PREFIX_KBASH_LOGS     | $KBASH/api/util/kbash/state.sh        |
| VAR_PREFIX_KBASH_COMMAND   | $KBASH/api/util/kbash/state.sh     |
| VAR_PREFIX_FUNCTION_LIST  | $KBASH/api/util/kbash/state.sh                              |
| VAR_PREFIX_KBASH_FUNCTION  | $KBASH/api/util/kbash/state.sh    |
| VAR_PREFIX_COMPONENT_LIST | $KBASH/api/util/kbash/state.sh                              |
| VAR_PREFIX_COMPONENT_DIR  | $KBASH/api/util/kbash/state.sh   |


### Initial Values

|Variable                   | Value                         |
|---------------------------|-------------------------------|
| VAR_PREFIX                | $( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )                              |
| VAR_PREFIX_KBASH           | $VAR_PREFIX/bashenv           |
| VAR_PREFIX_KBASH_LOGS     | $VAR_PREFIX/kbash-logs        |
| VAR_PREFIX_KBASH_COMMAND   | $VAR_PREFIX_KBASH/commands     |
| VAR_PREFIX_FUNCTION_LIST  |                               |
| VAR_PREFIX_KBASH_FUNCTION  | $VAR_PREFIX_KBASH/functions    |
| VAR_PREFIX_COMPONENT_LIST |                               |
| VAR_PREFIX_COMPONENT_DIR  | $VAR_PREFIX_KBASH/components   |

## api/boot.sh

boot.sh is invoked with 4 positional arguments

```
. <path-to-project-local-activate.sh> \
  "ENTRYPOINT"                      \
  "VAR_PREFIX"                        \
  "USER_UTIL_LOAD_LIST"               \
  "SYSTEM_UTIL_LOAD_LIST"
```

About

- *ENTRYPOINT*
  The shell prefix is the command line entry point used to
  access this environment.  It is also used to scope all
  functions loaded into the shell.

## api/commands
