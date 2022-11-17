$("#btn").on("click",function(){
    $("#text").html("ok");
    $("#text").fadeOut(2000);
      // クリックされたら class="bb"を表示する
  // そのためには注意！必ず最初に「非表示」にする必要があります🤗
  // cssの場合はdisplay:none;をつける
  $(".modal").fadeToggle(1000);
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



