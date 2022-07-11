const express =  require("express");
const app =  express();

const bodyparser = require("body-parser");
app.use(bodyparser.urlencoded({extended: true}))
app.get("/",function(req,res){
    res.sendFile(__dirname + "/index.html")

})
app.post("/",function(req,res){
    var num1 = Number(req.body.name1) ;
    var num2 = Number(req.body.name2);
    var result =  num1+num2;
    res.send("Calculated Result is ...." +  result);
    console.log(req.body, num1);

})
app.listen("3000",function(){
    console.log("server stared at port")
})