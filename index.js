
const require =  createRequire(import.meta.url);
const express = require('express')
const app = express()
// require ('dotenv').config()

import { request } from 'http';
import { createRequire } from 'module';
import { getProizvodjaci } from './proizvodjac.js'
import { getProizvodi } from './proizvodi.js'

app.get('/', async function (request, response) {
    // const proizvodId = response.query.proizvod_id
    // const proizvodjacId = response.query.proizvod_id


    const Proizvodjaci = await getProizvodjaci(1)
    const Proizvodi = await getProizvodi(1,1 )
    const data = [Proizvodi, Proizvodjaci]
    response.status(200).send(JSON.stringify(data))
})
app.post('/', async function (request, response) {
    const Proizvodjaci = await getProizvodjaci(1)
    const Proizvodi = await getProizvodi(1,1 )
    const data = [Proizvodi, Proizvodjaci]
    response.status(200).send(JSON.stringify(data))
})
app.listen(3000)

console.log("listening on port 3000")