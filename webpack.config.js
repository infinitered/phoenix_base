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

// Bourbon + Neat
// See http://forum.vuejs.org/topic/1367/integrating-bourbon-and-neat-with-vuejs-templates-webpack/2
var neat = require('bourbon-neat').includePaths
var bourbon = require('bourbon').includePaths

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
        presets: ['es2015'],
        plugins: ['transform-object-rest-spread']
      }
    }, {
      test: /\.(sass|scss)$/,
      loader: ExtractTextPlugin.extract('css?sourceMap!sass?sourceMap!import-glob')
    }]
  },

  sassLoader: {
    includePaths: [bourbon, neat]
  },

  plugins: plugins
}
