class Option < ActiveRecord::Base
  belongs_to :product

  PATTERN =["Geo squares",
    "Burst",
    "Daisy",
    "Chevron",
    "Cabana",
    "Solid"
  ]

  COLOR_ONE =["Red",
    "Blue",
    "Green",
    "Orange",
    "Purple",
    "Black",
    "Brown"
  ]

  COLOR_TWO =["Red",
    "Blue",
    "Green",
    "Orange",
    "Purple",
    "Black",
    "Brown"
  ]
end
