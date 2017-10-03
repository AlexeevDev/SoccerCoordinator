//** Part 1: ** We have provided information for the 18 players in the Player Info spreadsheet. Please choose an appropriate data type to store the information for each player. In addition, create an empty collection variable to hold all the players’ data. Once you have decided on what tools to use, manually enter the player data so it can be used in Part 2.
// Dictionaries with individual player information:

let players: [[String: Any]] = [
    ["name": "Joe Smith", "height": 42, "experienced": true, "guardianNames": "Jim and Jan Smith"],
    ["name": "Jil Tanner", "height": 36, "experienced": true, "guardianNames": "Clara Tanner"],
    ["name": "Bil Bon", "height": 43, "experienced": true, "guardianNames": "Sara and Jenny Bon"],
    ["name": "Eva Gordon", "height": 45, "experienced": false, "guardianNames": "Wendy and Mike Gordon"],
    ["name": "Matt Gill", "height": 40, "experienced": false, "guardianNames": "Charles and Sylvia Gill"],
    ["name": "Kimmy Stein", "height": 41, "experienced": false, "guardianNames": "Bill and Hillary Stein"],
    ["name": "Sammy Adams", "height": 45, "experienced": false, "guardianNames": "Jeff Adams"],
    ["name": "Karl Saygan", "height": 42, "experienced": true, "guardianNames": "Heather Bledsoe"],
    ["name": "Suzane Greenberg", "height": 44, "experienced": true, "guardianNames": "Henrietta Dumas"],
    ["name": "Sal Dali", "height": 41, "experienced": false, "guardianNames": "Gala Dali"],
    ["name": "Joe Kavalier", "height": 39, "experienced": false, "guardianNames": "Sam and Elaine Kavalier"],
    ["name": "Ben Finkelstein", "height": 44, "experienced": false, "guardianNames": "Aaron and Jill Finkelstein"],
    ["name": "Diego Soto", "height": 41, "experienced": true, "guardianNames": "Robin and Sarika Soto"],
    ["name": "Chlose Alaska", "height": 47, "experienced": false, "guardianNames": "David and Jamie Alaska"],
    ["name": "Arnold Willis", "height": 43, "experienced": false, "guardianNames": "Claire Willis"],
    ["name": "Phillip Helm", "height": 44, "experienced": true, "guardianNames": "Thomas Helm and Eva Jones"],
    ["name": "Les Clay", "height": 42, "experienced": true, "guardianNames": "Wynonna Brown"],
    ["name": "Herschel Krustofski", "height": 45, "experienced": true, "guardianNames": "Hyman and Rachel Krustofski"],
]


//** Part 2: ** Create logic to iterate through all 18 players and assign them to teams such that the number of experienced players on each team are the same. Store each team’s players in its own new collection variable for use in Part 3. (Please note: your logic should work correctly regardless of the initial ordering of the players and should work, if we theoretically had more or less than 18 players, so NO MAGIC NUMBERS!)

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

// Sorts experienced and notexperienced players by height:

var sortedExperiencedPlayers: [[String: Any]] = experiencedPlayers.sorted{$1["height"] as! Double > $0["height"] as! Double}

var sortedNotExperiencedPlayers: [[String: Any]] = notExperiencedPlayers.sorted{$1["height"] as! Double > $0["height"] as! Double}


//** Part 3: ** Create logic that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team the child has been placed on and when they should attend their first team team practice. As long as you provide the necessary information (player name, team name, guardian names, practice date/time), feel free to have fun with the content of the letter. The team practice dates/times are as follows:

// Empty team arrays:


var teamRaptors: [[String:Any]] = []
var teamDragons: [[String:Any]] = []
var teamSharks: [[String:Any]] = []

for playerCount in 0..<sortedExperiencedPlayers.count {
    
    let player = sortedExperiencedPlayers[playerCount]
    let remainingPlayers = playerCount % 3
    if remainingPlayers == 0 {
        teamRaptors.append(player)
    } else if remainingPlayers == 1 {
        teamDragons.append(player)
    } else {
        teamSharks.append(player)
    }
}

for playerCount in 0..<sortedNotExperiencedPlayers.count {
    let player = sortedNotExperiencedPlayers[playerCount]
    let remainingPlayers = playerCount % 3
    if remainingPlayers == 0 {
        teamSharks.append(player)
    } else if remainingPlayers == 1 {
        teamDragons.append(player)
    } else {
        teamRaptors.append(player)
    }
}


// Generates personalized letter to guardian(s):
var letters = [String]()

let raptorsPracticeTime = "March 18, 1pm"
let dragonsPracticeTime = "March 17, 1pm"
let sharksPracticeTime = "March 17, 3pm"

for player in teamRaptors {
    letters.append ("Dear \(player["guardian"] as! String), your child, \(player["name"] as! String), has been assigned to Team Raptors! The first practice is at \(raptorsPracticeTime).")
}

for player in teamDragons {
    letters.append ("Dear \(player["guardian"] as! String), your child, \(player["name"] as! String), has been assigned to Team Dragons! The first practice is at \(dragonsPracticeTime).")
}

for player in teamSharks {
    letters.append ("Dear \(player["guardian"] as! String), your child, \(player["name"] as! String), has been assigned to Team Sharks! The first practice is at \(sharksPracticeTime).")
}


for letter in 0..<letters.count {
    print(letters[letter])
}

// Finds and Prints average height of teams
var raptorsHeightArray: [Double] = []
var sharksHeightArray: [Double] = []
var dragonsHeightArray: [Double] = []

func averageHeightOf(team: String) -> String {
    // Calculates and returns a String with average height for each team
    
    let teamName = team
    
    if teamName == "Raptors" {
        for playerHeight in teamRaptors {
            let height = playerHeight["height"] as! Double
            raptorsHeightArray.append(height)
        }
        let totalRaptorsHeight = raptorsHeightArray.reduce(0, +)
        let averageRaptorsHeight = totalRaptorsHeight/Double(teamRaptors.count)
        
        return "The average height of Team Raptors is \(averageRaptorsHeight)."
        
    } else if teamName == "Dragons" {
        for playerHeight in teamDragons {
            let height = playerHeight["height"] as! Double
            dragonsHeightArray.append(height)
        }
        let totalDragonsHeight = dragonsHeightArray.reduce(0, +)
        let averageDragonsHeight = totalDragonsHeight/Double(teamDragons.count)
        
        return "The average height of Team Dragons is \(averageDragonsHeight)."
        
    } else if teamName == "Sharks" {
        for playerHeight in teamSharks {
            let height = playerHeight["height"] as! Double
            sharksHeightArray.append(height)
        }
        
        let totalSharksHeight = sharksHeightArray.reduce(0, +)
        let averageSharksHeight = totalSharksHeight/Double(teamSharks.count)
        
        return "The average height of Team Sharks is \(averageSharksHeight)."
    } else {
        
        return "Not a valid team name"
    }
}

print(averageHeightOf(team: "Raptors"))
print(averageHeightOf(team: "Dragons"))
print(averageHeightOf(team: "Sharks"))
















