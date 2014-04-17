class Dvd < ActiveRecord::Base
validates :title, presence: true
end

GENRE = ["Comedy", "Thriller", "Drama", "Sports", "Cartoon", "Musical", "Action"]

RATING =["G", "PG", "PG-13", "R", "NC-17"]