// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1. Lana Rakhman
//  2. Travis Hernandez


// 1. "YOU SIGNED... WHO?!"




// 2. "Here they Come!"





// 3. "TIME IS MONEY!"

//YOUR CODE HERE!

var adam = new Client("Adam Sandler", 47, "That's your home! Are you too good for your home?!");
var kristin = new Client("Kristin Bell", 33, "I'm gonna be Veronica Mars forever.");
var jim = new Client("Jim Carrey", 52, "My best movie was Ace Ventura.");


function Client(name, age, quote) {
  this.name = name,
  this.age = age,
  this.quote = quote
  
  var print = function(){
    console.log("This is " + name + "and his/her age is " + age + "and he/she says: " + quote)
  }
  
  print()
  
}

// OR:


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


// We had 2 solutions because for one of them the function cannot be called outside of the "class", and for the other 
// it can be called outside of the "class" (I know, I know, no classes in JS).
// 4. "SHOW 'EM OFF!"




// ** BONUS **
