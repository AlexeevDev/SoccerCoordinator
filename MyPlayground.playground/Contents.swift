// Dictionaries with individual player information:

let player1 : [String: Any] = [
    "name": "Joe Smith",
    "height": 42.0,
    "isExperienced": true,
    "guardian": "Jim and Jan Smith"
]

let player2 : [String: Any] = [
    "name": "Jill Tanner",
    "height": 36.0,
    "isExperienced": true,
    "guardian": "Clara Tanner"
]

let player3 : [String: Any] = [
    "name": "Bill Bon",
    "height": 43.0,
    "isExperienced": true,
    "guardian": "Sara and Jenny Bon"
]

let player4 : [String: Any] = [
    "name": "Eva Gordon",
    "height": 45.0,
    "isExperienced": false,
    "guardian": "Wendy and Mike Gordon"
]

let player5 : [String: Any] = [
    "name": "Matt Gill",
    "height": 40.0,
    "isExperienced": false,
    "guardian": "Charles and Sylvia Gill"
]

let player6 : [String: Any] = [
    "name": "Kimmy Stein",
    "height": 41.0,
    "isExperienced": false,
    "guardian": "Bill and Hillary Stein"
]

let player7 : [String: Any] = [
    "name": "Sammy Adams",
    "height": 45.0,
    "isExperienced": false,
    "guardian": "Jeff Adams"
]

let player8 : [String: Any] = [
    "name": "Karl Saygan",
    "height": 42.0,
    "isExperienced": true,
    "guardian": "Heather Bledsoe"
]

let player9 : [String: Any] = [
    "name": "Suzanne Greenberg",
    "height": 44.0,
    "isExperienced": true,
    "guardian": "Henrietta Dumas"
]

let player10 : [String: Any] = [
    "name": "Sal Dali",
    "height": 41.0,
    "isExperienced": false,
    "guardian": "Gala Dali"
]

let player11 : [String: Any] = [
    "name": "Joe Kavalier",
    "height": 39.0,
    "isExperienced": false,
    "guardian": "Sam and Elaine Kavalier"
]

let player12 : [String: Any] = [
    "name": "Ben Finkelstein",
    "height": 44.0,
    "isExperienced": false,
    "guardian": "Aaron and Jill Finkelstein"
]

let player13 : [String: Any] = [
    "name": "Diego Soto",
    "height": 41.0,
    "isExperienced": true,
    "guardian": "Robin and Sarika Soto"
]

let player14 : [String: Any] = [
    "name": "Chloe Alaska",
    "height": 47.0,
    "isExperienced": false,
    "guardian": "David and Jamie Alaska"
]

let player15 : [String: Any] = [
    "name": "Arnold Willis",
    "height": 43.0,
    "isExperienced": false,
    "guardian": "Claire Willis"
]

let player16 : [String: Any] = [
    "name": "Phillip Helm",
    "height": 44.0,
    "isExperienced": true,
    "guardian": "Thomas Helm and Eva Jones"
]

let player17 : [String: Any] = [
    "name": "Les Clay",
    "height": 42.0,
    "isExperienced": true,
    "guardian": "Wynonna Brown"
]

let player18 : [String: Any] = [
    "name": "Herschel Krustofski",
    "height": 45.0,
    "isExperienced": true,
    "guardian": "Hyman and Rachel Krustofski"
]

// Collection of all 18 players:

var players: [[String: Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Players sorted by experience:

var experiencedPlayers = [[String: Any]]()
var notExperiencedPlayers = [[String: Any]]()

for player in players {
    var experienced: Bool = player["isExperienced"] as! Bool
    if experienced == true {
        experiencedPlayers.append(player)
    } else {
        notExperiencedPlayers.append(player)
    }
}
















