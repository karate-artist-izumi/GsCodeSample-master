let hasMove = false;
const img = document.getElementById("img");

$("btn").on("click", function () {
    if (hasMove) {
        img.setAttribute("src", "./img/turtle.png");
        hasMove = false;
    } else {
        img.setAttribute("src", "./img/swim_turtle.gif");
        hasMove = true;
    }
    
);
