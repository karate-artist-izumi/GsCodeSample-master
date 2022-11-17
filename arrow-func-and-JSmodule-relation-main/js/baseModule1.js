import { foo, bar, hoge } from "./sub/subModule1.js";
import sub2 from "./sub/subModule2.js";

console.log(foo); // => "foo"
bar();
console.log(hoge[1]);

console.log(sub2.school.address);

// 参照URL
// https://devsakaso.com/overview-of-modern-javascript-development/
// https://jsprimer.net/basic/module/
