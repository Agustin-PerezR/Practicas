var os = require('os')

const express = require('express')
const app = express()
const port = 3000

const id = /**  HASH_ID **/
const hora = process.env.DATE

app.get('/', (req, res) => {
  res.send('v' + hora + " id:" + id)
})

app.listen(port, () => {
  console.log(`Estas en el puerto ${port}`)
})

module.exports = app
