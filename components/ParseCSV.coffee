noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component
  c.icon = 'cog'
  c.description = 'Parse CSV'

  c.inPorts.add 'source',
    datatype: 'string'

  c.inPorts.add 'config',
    datatype: 'object'

  c.outPorts.add 'out',
    datatype: 'object'

  c.process (input, output) ->
    output.send
      out: {}
    output.done()
