noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component
  c.icon = 'cog'
  c.description = 'Invoke Python'

  c.inPorts.add 'script',
    datatype: 'string'

  c.outPorts.add 'out',
    datatype: 'object'

  c.outPorts.add 'error',
    datatype: 'error'

  c.process (input, output) ->
    output.send
      out: {}
    output.done()
