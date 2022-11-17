// console.log(1);
// const a = [1, 2, 3, 4, 5];
// const b = a.at(-1);
// console.log(b);

// const values = new Array(5).fill([1,2]);
// console.log(values); // [0, 0, 0, 0, 0]
// values.fill([4], 1, values.length - 2);
// console.log(values); // [0, 1, 1, 1, 0]


// =========ボタン1の関数=========
const btn1 = document.getElementById("btn1");
btn1.addEventListener("click", function () {
    console.log("ボタン1です");
});

// =========ボタン2の関数=========
const btn2 = document.getElementById("btn2");
btn2.addEventListener("click", () => {
    console.log("ボタン2です");
});

// =========ボタン3の関数=========
funcss = function () {
    console.log("ボタン3です");
};
const btn3 = document.getElementById("btn3");
btn3.addEventListener("click", funcss);

// =========ボタン4の関数=========
const btn4 = document.getElementById("btn4");
btn4.addEventListener("click", () => console.log("ボタン4です"));

// =========ボタン5~7の関数=========
funcWithArg = function (arg) {
    console.log(`${arg} is text`);
};
funcWithArg2 = (arg) => {
    console.log(`${arg} is text`);
};
funcWithArg3 = (arg) => console.log(`${arg} is text`);

// =========ボタン5の関数=========
const btn5 = document.getElementById("btn5");
btn5.addEventListener("click", function () {
    const arg1 = document.getElementById("inputTextArea").value;
    console.log("ボタン5のfuncWithArg1の関数");
    funcWithArg(arg1);
});

// =========ボタン6の関数=========
const btn6 = document.getElementById("btn6");
btn6.addEventListener("click", (e) => {
    console.log(e);
    const arg2 = document.getElementById("inputTextArea").value;
    console.log("ボタン6のfuncWithArg2の関数");
    funcWithArg2(arg2);
});

// =========ボタン7の関数=========
const btn7 = document.getElementById("btn7");
btn7.addEventListener("click", () => {
    const arg2 = document.getElementById("inputTextArea").value;
    console.log("ボタン7のfuncWithArg3の関数");
    funcWithArg3(arg2);
});
