const express = require('express')
const app = express()

app.get('/', (req, res) => res.send('Node Hello World!'))

app.get('/index', (req, res) => {
    console.log(__dirname)
    res.sendFile(__dirname + '/index.html')
})

app.listen(3000, () => console.log('Example app listening on port 3000!'))
