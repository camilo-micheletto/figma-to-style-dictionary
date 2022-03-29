const ColorClient = require('../models/ColorModel')
const { parseRGB, rgbToHex } = require('../utils/color')

class ColorController {
  constructor() {
    this._colorMap = {}
    this._colorPage = null
    this._colorStyles = null
  }

  async getColors() {
    try {
      return await ColorClient.getFile()
        .then(data => {
          this._colorPage = data.document.children
            .filter(page => page.name === 'Color')
          this._colorStyles = Object.entries(data.styles)
            .map(colorData => {
              return {
                id: colorData[0],
                name: colorData[1].name
              }
            })
        })
        .then(() => this.parseColors())
    } catch (err) {
      throw new Error(err)
    }
  }

  parseColors() {
    this._colorPage[0].children
      .map(colorNode => {
        let prefix = this.getColorPrefix(colorNode)
        if (this._colorMap[prefix]) {
          Object.assign(this._colorMap[prefix], {
            [this.removeColorInfix(this.getColorFamily(colorNode.styles?.fill)?.name) || `${prefix} (not named)`]: {
              value: rgbToHex(parseRGB(colorNode.fills[0].color))
            }
          })
        } else { this._colorMap[prefix] = {} }

      })
    return { color: { ...this._colorMap } }
  }

  getColorPrefix({ name }) {
    return name.split(' ')[0].toLowerCase()
  }

  getColorFamily(id) {
    return this._colorStyles.filter(style => style.id === id)[0]
  }

  removeColorInfix(name) {
    return name ? name.replace(/(color|\s)/gi, '') : false
  }
}

module.exports = ColorController