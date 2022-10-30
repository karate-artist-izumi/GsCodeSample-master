let hasMove = false;
const img = document.getElementById("img");

animalsArray = [
    ["./img/turtle.png", "./img/swim_turtle.gif"],
    ["./img/cat.png", "./img/step_cat.gif"],
    ["./img/bat.png", "./img/fly_bat.gif"],
];

let selectNumber;

$("#chara-select-btn").on("click", () => {
    const number = Math.floor(Math.random() * 3);
    selectNumber = number;
    console.log(animalsArray[number][0]);
    img.setAttribute("src", animalsArray[number][0]);
    hasMove == false;
});

$("#move-btn").on("click", function () {
    if (selectNumber == null) {
        selectNumber = 0;
    }

    if (hasMove) {
        img.setAttribute("src", animalsArray[selectNumber][0]);
        hasMove = false;
        console.log("png");
    } else {
        img.setAttribute("src", animalsArray[selectNumber][1]);
        hasMove = true;
        console.log("gif");
    }

    console.log("clicked");
});
