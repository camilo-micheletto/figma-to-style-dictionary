const parseRGB = colorObj => {
  const [r, g, b] = Object
    .values(colorObj)
    .map(value => Number((value * 255).toFixed(0)))
  return { r, g, b }
}


const rgbToHex = ({ r, g, b }) =>
  '#' + ((r << 16) + (g << 8) + b)
    .toString(16)
    .slice(1)


module.exports = {
  rgbToHex,
  parseRGB
}