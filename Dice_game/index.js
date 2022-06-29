document.querySelector("h1").onclick = handleClick;

function handleClick() {
    document.querySelectorAll("h3")[0].innerHTML = "Player1"
    document.querySelectorAll("h3")[1].innerHTML = "Player 2"
   document.querySelector("h1").innerHTML = "Rolling the Dice...";
   setTimeout(mycall, 1000);
}
function mycall(){
document.querySelector("h1").innerHTML = "Dice is rolled.......";
setTimeout( rolldice, 1000);
}
function rolldice() {
    var x =  Math.floor((Math.random()*6)+ 1)
    var y =  Math.floor((Math.random()*6)+ 1)
 document.getElementById("dic").src = "images/dice-six-faces-"+x+".svg"
 document.getElementById("dic2").src = "images/dice-six-faces-"+y+".svg"
 document.querySelector("h1").innerHTML = "Refresh again Me..";
if(y>x) {
    document.querySelectorAll("h3")[0].innerHTML = "I Won..😀"
    document.querySelectorAll("h3")[1].innerHTML = "Player2..🥺"
    

}
else if(y<x){
    document.querySelectorAll("h3")[1].innerHTML = "I Won..😀"
    document.querySelectorAll("h3")[0].innerHTML = "Player1..🥺"
    
}
else{ 
    document.querySelectorAll("h3")[0].innerHTML = "Its Draw Match..😀"
    document.querySelectorAll("h3")[1].innerHTML = "Its Draw Match..😀"


}
}