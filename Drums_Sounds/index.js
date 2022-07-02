var no_of_drum = document.querySelectorAll(".drum").length
for (var i =0; i< no_of_drum;i++){
   document.querySelectorAll(".drum")[i].addEventListener("click",function (){
  // alert("You Clicked Letter is..!"+ this.innerHTML);
  var key = this.innerHTML;
  palySound(key);
  addAnimation(key)
   
   })
}

document.addEventListener("keypress",function (event) {
    palySound(event.key);
    addAnimation(event.key);
})
function palySound(key){
    switch (key) {
        case "w":
            var tom1  = new Audio("sounds/tom-1.mp3");
            tom1.play();
            break;
        case "a":
            var tom1  = new Audio("sounds/crash.mp3");
            tom1.play();
            break;
        case "s":
            var tom1  = new Audio("sounds/kick-bass.mp3");
            tom1.play();
            break;
        case "d":
            var tom1  = new Audio("sounds/tom-1.mp3");
            tom1.play();
            break;
            
        case "j":
            var tom1  = new Audio("sounds/tom-3.mp3");
            tom1.play();
            break;
    
        case "k":
            var tom1  = new Audio("sounds/crash.mp3");
            tom1.play();
            break;
        case "l":
            var tom1  = new Audio("sounds/tom-4.mp3");
            tom1.play();
            break;
        default:
            break;
       }
}

function addAnimation (key) {
    var pressedkey = document.querySelector("."+key);
    pressedkey.classList.add("pressed");
    setTimeout(timestop ,200,pressedkey);

}
function timestop(mypressed) {
    mypressed.classList.remove("pressed");
}