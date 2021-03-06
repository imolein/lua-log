# lua-log

This logging module is inspired by [rxi](https://github.com/rxi).

![](screenshot.png)

## How to install?

`luarocks install log`

See [LuaRocks](http://luarocks.org/modules/mistrza/log) for versions.

## How to use?

```lua
-- Hello

log = require 'log'
log.output_file = 'log.txt'
log.usecolor = true -- Default

log.trace('Test')
log.info('Test')

```

### Levels

- Trace (`log.trace`)
- Debug (`log.debug`)
- Info (`log.info`)
- Warn (`log.warn`)
- Error (`log.error`)
- Fatal (`log.fatal`)

### Parameters

- `log.usecolor`
- `log.output_file`
