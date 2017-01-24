function diceroll (x, y) {  //takes 2 numbers, rolls x die y
    var dice1 = x;
    var dice2 = y;
    console.log( "Rolling"+ dice1+ "d"+ dice2") ;
    for (var i=1; i<=x; i++){
        console.log("Die number "+ i + " is " + getRandomInt(1,dice2));
    }
}

diceroll(10, 6)

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min;
}

console.log(getRandomInt(1,20));