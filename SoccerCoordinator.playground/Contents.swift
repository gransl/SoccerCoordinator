/* Soccer Coordinator Program

 The purpose of this program is to sort young soccer players into 6 different teams based on their ability and height. This is the first project in the Team Treehouse Swift Techdegree program. 
 
 */
 
 // Separate Dictionaries for the 18 different soccer players. Each dictionary will have a key of "playerFirstName" which we will put the player's first name, "playerLastName" which we will put the player's last name, "ability" which we can set to yes or no, "height" for the player's height, and "parentNames" for the names of the parents. (We are separating out the first and last name to make the letter we send to the parents sound more genuine, instead of having the whole name listed everytime we refer to the child.)

var player0 = ["playerFirstName": "Joe", "playerLastName": "Smith", "ability": "yes", "height": "42", "parentNames": "Jim and Jan Smith"]
var player1 = ["playerFirstName": "Jill", "playerLastName": "Tanner", "ability": "yes", "height": "36", "parentNames": "Clara Tanner"]
var player2 = ["playerFirstName": "Bill", "playerLastName": "Bon", "ability": "yes", "height": "43", "parentNames": "Sara and Jenny Bon"]
var player3 = ["playerFirstName": "Eva", "playerLastName": "Gordon", "ability": "no", "height": "45", "parentNames": "Wendy and Mike Gordon"]
var player4 = ["playerFirstName": "Matt", "playerLastName": "Gil", "ability": "no", "height": "40", "parentNames": "Charles and Sylvia Gill"]
var player5 = ["playerFirstName": "Kimmy", "playerLastName": "Stein", "ability": "no", "height": "41", "parentNames": "Bill and Hillary Stein"]
var player6 = ["playerFirstName": "Sammy", "playerLastName": "Adams", "ability": "no", "height": "45", "parentNames": "Jeff Adams"]
var player7 = ["playerFirstName": "Karl", "playerLastName": "Saygan", "ability": "yes", "height":"42", "parentNames": "Heather Bledsoe"]
var player8 = ["playerFirstName": "Suzane", "playerLastName": "Greenberg", "ability": "yes", "height": "44", "parentNames": "Henrietta Dumas"]
var player9 = ["playerFirstName": "Sal", "playerLastName": "Dali", "ability": "no", "height": "41", "parentNames": "Gala Dali"]
var player10 = ["playerFirstName": "Joe", "playerLastName": "Kavalier", "ability": "no", "height": "39","parentNames": "Sam and Elaine Kavalier"]
var player11 = ["playerFirstName": "Ben", "playerLastName": "Finkelstein", "ability": "no", "height": "44", "parentNames": "Aaron and Jill Finkelstein"]
var player12 = ["playerFirstName": "Diego", "playerLastName": "Soto", "ability": "yes", "height": "41", "parentNames": "Robin and Sarika Soto"]
var player13 = ["playerFirstName": "Chloe", "playerLastName": "Alaska", "ability": "no", "height": "47", "parentNames": "David and Jamie Alaska"]
var player14 = ["playerFirstName": "Arnold", "playerLastName": "Willis", "ability": "no", "height": "43", "parentNames": "Claire Willis"]
var player15 = ["playerFirstName": "Phillip", "playerLastName": "Helm", "ability": "yes", "height": "44", "parentNames": "Thomas Helm and Eva Jones"]
var player16 = ["playerFirstName": "Les", "playerLastName": "Clay", "ability": "yes", "height": "42", "parentNames": "Wynonna Brown"]
var player17 = ["playerFirstName": "Herschel", "playerLastName": "Krustofi", "ability": "yes", "height": "45", "parentNames": "Hyman and Rachel Krustofski"]

// Store the players in an array

var arrayOfPlayers: [[String: String]] = []

arrayOfPlayers.append(player0)
arrayOfPlayers.append(player1)
arrayOfPlayers.append(player2)
arrayOfPlayers.append(player3)
arrayOfPlayers.append(player4)
arrayOfPlayers.append(player5)
arrayOfPlayers.append(player6)
arrayOfPlayers.append(player7)
arrayOfPlayers.append(player8)
arrayOfPlayers.append(player9)
arrayOfPlayers.append(player10)
arrayOfPlayers.append(player11)
arrayOfPlayers.append(player12)
arrayOfPlayers.append(player13)
arrayOfPlayers.append(player14)
arrayOfPlayers.append(player15)
arrayOfPlayers.append(player16)
arrayOfPlayers.append(player17)

// Make three different arrays for each of the three teams: Dragons, Sharks, Raptors

var dragons: [[String: String]] = []
var sharks: [[String: String]] = []
var raptors: [[String: String]] = []

/* Sort the experienced players so they are balanced across each team.

    I am doing this by first using an if statement to sort all of the experienced players evenly across all the groups. Then I am going to use another if statement to sort all the unexperienced players evenly across all the groups. To make sure I am distributing them each equally, I am going to use another if statement that uses comparison statements to compare the sizes of the teams against each other. A player is only placed on a team if it has less than or equal to the same number of players on every other team. Because I didnt know a  way to have the team selected at random, if there are an equal number of teams that have the least amount, the order they are getting sorted in is Dragons -> Sharks -> Raptors. If we had number of players that wasn't divisible by 3 then Dragons then Sharks would always have an additional player. I don't see this as techically unfair as it is likely random if the new players being added are experienced or unexperienced.
 */

var dragonsHeight = 0
var sharksHeight = 0
var raptorsHeight = 0

for player in arrayOfPlayers{

    let playerAbility = player["ability"]
    let playerStringHeight: String = player["height"]!
    let playerHeight = Int(playerStringHeight)!
    
    if playerAbility == "yes" {
        if dragons.count <= sharks.count && dragons.count <= raptors.count {
            
            dragons.append(player)
            
        }
        else if sharks.count <= raptors.count && sharks.count <= dragons.count {
            
            sharks.append(player)

        }
        else {
            
            raptors.append(player)
            
        }
    }
}

for player in arrayOfPlayers{
    
    let playerAbility = player["ability"]
    let playerStringHeight: String = player["height"]!
    let playerHeight = Int(playerStringHeight)!
    
    if playerAbility == "no" {
        if dragons.count <= sharks.count && dragons.count <= raptors.count {
            
            dragons.append(player)
            
        }
        else if sharks.count <= raptors.count && sharks.count <= dragons.count {
            
            sharks.append(player)
            
        }
        else {
            
            raptors.append(player)
            
        }
    }
}




// Send a letter to each parent about what team their child is on. We will just iterate throughe each team array individually and have the appropriate letter sent to that child's parents.

for player in dragons {
    
    let parentNames = player["parentNames"]
    let playerFirstName = player["playerFirstName"]
    
    print("Dear \(parentNames), Congratulations, \(playerFirstName) is a member of the Dragons soccer team! Your first practice will be on March 17th at 1pm!")
}

for player in sharks {
    
    let parentNames = player["parentNames"]
    let playerFirstName = player["playerFirstName"]
    
    print("Dear \(parentNames), Congratulations, \(playerFirstName) is a member of the Sharks soccer team! Your first practice will be on March 17th at 3pm!")
}

for player in raptors {
    
    let parentNames = player["parentNames"]
    let playerFirstName = player["playerFirstName"]
    
    print("Dear \(parentNames), Congratulations, \(playerFirstName) is a member of the Raptors soccer team! Your first practice will be on March 18th at 1pm!")
}




