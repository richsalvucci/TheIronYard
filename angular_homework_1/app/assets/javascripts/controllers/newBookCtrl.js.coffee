@NewBookCtrl = ($scope, $location, bookData) ->
  $scope.data = bookData.data
  bookData.loadBooks(null)

  $scope.formData =
    newBookTitle: ""
    newBookAuthor: ""
    newBookDescription:""

  $scope.createBook = ->
    console.log $scope.formData
    bookData.createBook($scope.formData)
    $scope.returnHome()

  $scope.returnHome = ->
    console.log 'return home from NewBookCtrl'
    $location.url "/"