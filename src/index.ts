import * as express from 'express'

const app = express()
const port = 3000

app.get('/', (req: express.Request, res:express.Response)=> {
  res.json({
    message: 'Hello world from express!'
  })
})

app.listen(port, ()=> {
  console.log(`Demo app running at port ${port}!`)
})
