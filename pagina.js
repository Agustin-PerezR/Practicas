var os = require('os')

const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('v' + process.env.FECHA + process.env.ID_HASH)
})

app.listen(port, () => {
  console.log(`Estas en el puerto ${port}`)
})

module.exports = app
