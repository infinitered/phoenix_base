var webpack = require('webpack')
var ExtractTextPlugin = require('extract-text-webpack-plugin')
var CopyWebpackPlugin = require('copy-webpack-plugin')

var env = process.env.MIX_ENV || 'dev'
var isProduction = (env === 'prod')

var plugins = [
  new ExtractTextPlugin('css/app.css', { allChunks: true }),
  new CopyWebpackPlugin([{ from: './web/static/assets' }])
]

if (isProduction) {
  plugins.push(new webpack.optimize.UglifyJsPlugin({minimize: true}))
}

module.exports = {
  entry: './web/static/js/app.js',

  output: {
    path: './priv/static/',
    filename: 'js/app.js'
  },

  devtool: 'source-map',

  module: {
    loaders: [{
      test: /\.js?$/,
      exclude: /(node_modules|bower_components)/,
      loader: 'babel',
      query: {
        presets: ['es2015', 'react'],
        plugins: ['transform-object-rest-spread']
      }
    }, {
      test: /\.(sass|scss)$/,
      loader: ExtractTextPlugin.extract('css?sourceMap!sass?sourceMap!import-glob')
    }]
  },

  plugins: plugins
}
