$("#btn").on("click",function(){
    $("#text").html("ok");
});


// const r = Math.ceil(Math.random());
// const r = Math.random()*5;
const r = Math.ceil(Math.random() * 3);
console.log(r);
if(r < 2){
    console.log("大吉")
}else if(r == 2){
    console.log("吉")
}else{
    console.log("kyo")
}

