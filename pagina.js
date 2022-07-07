var os = requiere('os')

const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('v' + "/** DATE **/" + " id:" + "no anda")
})

app.listen(port, () => {
  console.log(`Estas en el puerto ${port}`)
})

module.exports = app
