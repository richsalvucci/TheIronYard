# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
#= require_tree ./services
#= require_tree ./controllers
#= require_tree ./directives
#= require_tree ./filters


Book = angular.module("Book", ['ngRoute'])

Book.config(["$routeProvider", ($routeProvider) ->
  $routeProvider.when('/books/new', {templateUrl: "../assets/newBook.html", controller: "NewBookCtrl"})
  $routeProvider.when('/books/:bookId', {templateUrl: "../assets/book.html", controller: "BookCtrl"})
  $routeProvider.when('/books/:bookId/edit', {templateUrl: "../assets/editBook.html", controller: "EditBookCtrl"})

  

  $routeProvider.otherwise({ templateUrl: '../assets/index.html', controller: "IndexCtrl"})
])

Book.config(['$httpProvider', (provider) ->
  provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])
