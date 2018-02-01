noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component
  c.icon = 'cog'
  c.description = 'Invoke Python'

  c.inPorts.add 'source',
    datatype: 'string'

  c.inPorts.add 'config',
    datatype: 'object'

  c.inPorts.add 'data',
    datatype: 'object'

  c.outPorts.add 'out',
    datatype: 'object'

  c.outPorts.add 'err',
    datatype: 'object'

  c.process (input, output) ->
    output.send
      out: {}
      output.done()
