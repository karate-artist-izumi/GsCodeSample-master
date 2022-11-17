const base = {
    age: 18,
    name: {
        family: "maeta",
        last: "tatsuya",
    },
    greet: function () {
        // このthisはbaseオブジェクトのことを指す
        console.log(`Hello, ${this.name.last} ${this.name.family}.`);
    },
    nightGreet() {
        // greetと同じような使用方法が可能
        console.log(`${this.name.family}, good night`);
    },
    morningGreet: () => {
        // このthisはこのオブジェクト(base)の外のオブジェクト(window)を指す
        // arrow関数を使用するときは要注意
        // this.windowで繋げるとdocument以下の情報にアクセスできる
        console.log(this);
        console.log(this.window.document.getElementById("btn1").innerText);
    },
};

console.log("☆☆main.jsの関数のconsole.logです☆☆");
base.greet();
base.nightGreet();
base.morningGreet();
console.log("☆☆以上がmain.jsの関数のconsole.logです☆☆");