
let hasMove = false;

$("#btn").on("click", function () {
    const img = document.getElementById("img");
    if (hasMove == true) {
        img.setAttribute("src", "./img/turtle.png");
        hasMove = false;
        console.log("png");
    } else {
        img.setAttribute("src", "./img/swim_turtle.gif");
        hasMove = true;
        console.log("gif");
    }

    console.log("clicked");
});
