@EditBookCtrl = ($scope, $location, $routeParams, bookData, $q) ->
  $scope.data = 
    bookData: bookData.data
    currentBook:
      title: "Please wait while the page loads"
      author: ""
      description: ""


  $scope.data.bookId = $routeParams.bookId

  $scope.formData =
    editBookTitle: ""
    editBookAuthor: ""
    editBookDescription:""

  $scope.findBookById = ->
    console.log "Hey"
    console.log(bookData.data.books)
    book = _.findWhere(bookData.data.books, {id: parseInt($scope.data.bookId)})
    console.log book
    $scope.data.currentBook.title = book.title
    $scope.data.currentBook.author = book.author
    $scope.data.currentBook.description = book.description
    $scope.formData.editBookTitle = book.title
    $scope.formData.editBookAuthor = book.author
    $scope.formData.editBookDescription = book.description
    $scope.formData.editBookId = $scope.data.bookId

  $scope.editBook = ->
    console.log "edit"
    console.log $scope.formData
    bookData.updateBook($scope.formData)
    $scope.returnHome()

  $scope.returnHome = ->
    $location.url "/"

  @deferred = $q.defer()
  @deferred.promise.then($scope.findBookById)
  bookData.loadBooks(@deferred)