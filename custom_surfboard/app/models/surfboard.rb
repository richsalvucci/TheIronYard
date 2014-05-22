class Surfboard < ActiveRecord::Base
  has_many :customers, through: :my_board

  def self.select_board_type(board_type)
    if board_type == "Longboard"
      Surfboard::LONGBOARD_OPTIONS 
    elsif board_type == "Shortboard"
      Surfboard::SHORTBOARD_OPTIONS
    elsif board_type == "Funboard"
      Surfboard::FUNBOARD_OPTIONS
    elsif board_type == "Fish"
      Surfboard::FISH
    end
  end

  BOARD_TYPE = [
    "Longboard",
    "Shortboard",
    "Funboard",
    "Fish"
  ]

  MATERIAL =[
    "Polyurethane",
    "Epoxy"
  ]

  FIN_SETUP =[
    "Thruster",
    "Single",
    "2 + 1",
    "Twin",
    "Quad",
    "Convertible"
  ]

  FIN_TYPE =[
    "FCS",
    "Futures",
    "Glass-on",
  ]

  TAIL = [
    "Squash",
    "Swallow",
    "Rounded",
    "Pin-Tail",
    "Diamond",
    "Rounded-Pin",
    "Fish"
  ]

  GLASSING = [
    "4oz",
    "6oz",
    "Volan",
    "S-Glass"
  ]

  LENGTH = [
    5.10,
    5.11,
    6.0,
    6.1,
    6.2,
    6.3,
    6.4,
    6.5,
    6.6,
    7.0,
    7.2,
    7.4,
    7.6,
    8.0,
    8.6,
    9.0,
    9.6,
    10.0,
  ]

  WIDTH = [
    19.5,
    19.75,
    20.0,
    20.25,
    20.5,
    20.75,
    21.0,
    21.25,
    21.5,
    21.75,
    22.0,
    22.25,
    22.5,
    22.75,
    23.0, 
    23.5,
    24.0
  ]

  THICKNESS = [
    2.0,
    2.25,
    2.5,
    2.75,
    3.0,
    3.25
  ]

  LONGBOARD_OPTIONS = {
    material: MATERIAL,
    fin_setup:["2+1", "Single"],
    fin_type: FIN_TYPE,
    tail:["Squash", "Rounded","Rounded-Pin"],
    glassing: ["Volan", "S-Glass"],
    length: [8.0, 8.6, 9.0, 9.6, 10.0,],
    width: [22.0, 22.25, 22.5, 22.75, 23.0, 23.5, 24.0],
    thickness: [2.5, 2.75, 3.0, 3.25]
  }

  SHORTBOARD_OPTIONS = {
    material: MATERIAL,
    fin_setup:["Thruster", "Convertible"],
    fin_type: FIN_TYPE,
    tail:["Squash", "Swallow", "Rounded", "Diamond"],
    glassing: ["4oz", "6oz"],
    length: [5.10, 5.11, 6.0, 6.1, 6.2, 6.3, 6.4, 6.5, 6.6],
    width: [19.5, 19.75, 20.0, 20.25, 20.5, 20.75, 21.0, 21.25, 21.5, 21.75, 22.0, 22.25],
    thickness: [2.0, 2.25, 2.5, 2.75] 
  }

  FUNBOARD_OPTIONS = {
    material: MATERIAL,
    fin_setup:["Thruster", "2+1", "single", "Convertible"],
    fin_type: FIN_TYPE,
    tail:["Squash", "Swallow", "Rounded", "Rounded-Pin"],
    glassing: ["4oz", "6oz"],
    length: [6.6, 7.0, 7.2, 7.4, 7.6, 8.0,],
    width: [19.5, 19.75, 20.0, 20.25, 20.5, 20.75, 21.0, 21.25, 21.5, 21.75, 22.0, 22.25],
    thickness: [2.0, 2.25, 2.5, 2.75]
  }

    FISH = {
    material: MATERIAL,
    fin_setup:["Twin", "Quad", "Convertible"],
    fin_type: FIN_TYPE,
    tail:["Squash", "Swallow", "Fish"],
    glassing: ["4oz", "6oz"],
    length: [5.10, 5.11, 6.0, 6.1, 6.2, 6.3, 6.4, 6.5, 6.6, 7.0, 7.2],
    width: [20.0, 20.25, 20.5, 20.75, 21.0, 21.25, 21.5, 21.75, 22.0, 22.25],
    thickness: [2.0, 2.25, 2.5, 2.75] 
  }



  # On front end, when you change the type of board,
  # Do an ajax request to the server to find out what the new options are for that board
  # On return from the server, re-populate your select boxes
end
