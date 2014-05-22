@IndexCtrl = ($scope, $location, $http, bookData) ->
  $scope.title = "List of Books"
  $scope.data = bookData.data
    
  $scope.viewBook = (bookId) ->
    console.log "Is this loading?"
    $location.url("/books/#{bookId}")

  $scope.createNewBook = ->
    console.log "Does this load?"
    $location.url("/books/new")

  bookData.loadBooks(null)