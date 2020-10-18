const isProd = process.env.NODE_ENV === 'production';

module.exports = {
  assetPreffix: isProd ? '/next' : ''
}
