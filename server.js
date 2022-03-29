require('dotenv').config();
const fs = require('fs');
const cors = require('cors')
const StyleDictionary = require('style-dictionary').extend('config.json');
const ColorController = require('./controllers/ColorController')
const app = require('express')()
const PORT = process.env.PORT || 8080

const corsOptions = {
  origin: '*',
  credentials: 'true',
  optionSuccessStatus: 200
}

app.use(cors(corsOptions))

app
.route('/')
.get(async (req, res) => {
  try {
    const getFigmaColors = await new ColorController().getColors()
    let colorFileData = JSON.stringify(getFigmaColors)
    fs.writeFileSync(__dirname + '/tokens/color/base.json', colorFileData)
    StyleDictionary.buildAllPlatforms()
    res.send(colorFileData)
  } catch (err) {
    throw new Error(err)
  }
})

app.listen(PORT, () => {
  console.log(`listening to port ${PORT}`)
})