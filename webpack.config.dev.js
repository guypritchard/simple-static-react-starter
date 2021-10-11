
const { merge } = require('webpack-merge');
const common = require('./webpack.config.common.js');
const path = require('path');

module.exports = merge(
  common, 
  {
   mode: 'development',
   devtool: 'source-map',
   devServer: {
    static: path.join(__dirname, 'src'),
    port: 3000,
    open: true,
  },
});

