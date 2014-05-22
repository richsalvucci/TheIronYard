angular.module("Book").factory("bookData", ['$http', ($http) ->
  bookData =
    data:
     books: [
        {
          title:"Please wait while the page loads",
          author: "",
          description: ""
        }
      ]
    isLoaded: false

  bookData.loadBooks = (deferred) ->
    if bookData.isLoaded == false
      $http.get("/books.json").success( (data) ->
        bookData.data.books = data
        bookData.isLoaded = true
        console.log "Success"
        if deferred
          deferred.resolve()
      ).error( ->
        console.log "Fail"
        if deferred
          deferred.reject "We could not load books"
      )
    else
      if deferred
        deferred.resolve()

  bookData.createBook = (formData) ->
    console.log "Hey there"
    data =
      book:
        title:formData.newBookTitle
        author:formData.newBookAuthor
        description:formData.newBookDescription

    $http.post("/books.json", data).success( (data) ->
      console.log(data)
      bookData.data.books.push(data)
      console.log "A book was added"
    ).error( ->
      console.log "No books were added"
    )

    return true

  bookData.updateBook = (formData) ->
    console.log "Howzit?"
    data =
      book:
        title:formData.editBookTitle
        author:formData.editBookAuthor
        description:formData.editBookDescription
    
    $http.put("/books/#{formData.editBookId}.json", data).success( (data) ->
      console.log(data)
      book = _.findWhere(bookData.data.books, {id: parseInt(formData.editBookId)})
      book.title = data.title
      book.author = data.author
      book.description = data.description
      console.log "A book was updated"
    ).error( ->
      console.log "No books were updated"
    )

  bookData.deleteBook = (bookId) ->
    $http.delete("/books/#{bookId}.json").success( (data) ->
      book = _.findWhere(bookData.data.books, {id: parseInt(bookId)})
      bookData.data.books = _.without(bookData.data.books, book)
    console.log "A book was deleted"
    ).error( ->
      console.log "No books were deleted"
    )



  return bookData
])