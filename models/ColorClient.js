const axios = require('axios').default

class Color {
  constructor() {
    this.endpoint = 'https://api.figma.com/v1/files/'
    this.FIGMA_KEY = process.env.FIGMA_KEY
    this.DS_KEY = process.env.DS_KEY
  }

  async getFile() {
    try {
      return axios.get(
        `${this.endpoint}${this.DS_KEY}`,
        { headers: { 'X-Figma-Token': this.FIGMA_KEY } }
      ).then(res => res.data)
    } catch (err) {
      throw new Error(err)
    }
  }
}

module.exports = new Color()