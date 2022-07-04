const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Ferrin y Perez' + "/** DATE **/" + "_" + "/**  ID **/")
})

app.listen(port, () => {
  console.log(`Escuchando el puerto ${port}`)
})

module.exports = app
