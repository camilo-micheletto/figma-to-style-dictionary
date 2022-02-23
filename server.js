require('dotenv').config();
const fs = require('fs');
const StyleDictionary = require('style-dictionary').extend('config.json');
const ColorController = require('./controllers/ColorController')
const app = require('express')()
const PORT = 8080


app.get('/', async (req, res) => {
  try {
    const getFigmaColors = await new ColorController().getColors()
    let colorFileData = JSON.stringify(getFigmaColors)
    fs.writeFileSync(__dirname + '/tokens/color/base.json', colorFileData)
    StyleDictionary.buildAllPlatforms()
    res.send("Tokens updated")
  } catch (err) {
    throw new Error(err)
  }
})

app.get('/scss', (req, res) => {
  res.download(__dirname + '/build/scss/_variables.scss')
})

app.listen(PORT, () => {
  console.log(`listening to port ${PORT}`)
})