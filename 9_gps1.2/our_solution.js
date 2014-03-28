// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1. Lana Rakhman
//  2. Travis Hernandez


// 1. "YOU SIGNED... WHO?!"




// 2. "Here they Come!"





// 3. "TIME IS MONEY!"

//YOUR CODE HERE!

function Client(name, age, quote) {
  this.name = name,
  this.age = age,
  this.quote = quote
}

Client.prototype.print = function(){
	console.log("This is " + this.name + "and his/her age is " + this.age + "and he/she says: " + this.quote)
}

var adam = new Client("Adam Sandler", 47, "That's your home! Are you too good for your home?!");
var kristin = new Client("Kristin Bell", 33, "I'm gonna be Veronica Mars forever.");
var jim = new Client("Jim Carrey", 52, "My best movie was Ace Ventura.");


adam.print();
kristin.print();
jim.print();

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";



// 4. "SHOW 'EM OFF!"




// ** BONUS **
