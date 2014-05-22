@BookCtrl = ($scope, $location, $routeParams, bookData, $q) ->
  console.log "hi"
  $scope.data = 
    bookData: bookData.data
    currentBook:
      title: "Please wait while the page loads"
      author: ""
      description: ""
    
  $scope.data.bookId = $routeParams.bookId
  $scope.title= "Saltwater Buddha"

  $scope.returnHome = ->
    console.log 'returning home'
    $location.url("/")

  $scope.findBookById = ->
    console.log "Hey"
    book = _.findWhere(bookData.data.books, {id: parseInt($scope.data.bookId)})
    console.log book
    $scope.data.currentBook.title = book.title
    $scope.data.currentBook.author = book.author
    $scope.data.currentBook.description = book.description

  $scope.editBook = ->
    console.log "work dangit"
    $location.url("/books/#{$scope.data.bookId}/edit")

  $scope.deleteBook = ->
    console.log "delete"
    bookData.deleteBook($scope.data.bookId)
    $location.url("/")

  @deferred = $q.defer()
  @deferred.promise.then($scope.findBookById)
  bookData.loadBooks(@deferred)
