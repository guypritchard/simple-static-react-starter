const merge = require('webpack-merge');
const common = require('./webpack.config.common.js');
const CopyPlugin = require('copy-webpack-plugin');

module.exports = merge(common, {
  mode: 'production',
  devtool: 'source-map',
  plugins: [
    new CopyPlugin({
      patterns: [
        { 
          from: 'src/index.html', 
          to:'dist/index.html'
        }]
      }
    ),
  ],
});