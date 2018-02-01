noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component
  c.icon = 'cog'
  c.description = 'Config'
  c.outPorts.add 'out',
    datatype: 'object'
