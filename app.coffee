express = require "express"
module.exports = app = express()

app.get '/hello', (req, res) ->
  res.send 'Hello world!'

app.use '/', express.directory __dirname + '/web'
app.use '/', express.static __dirname + '/web'
