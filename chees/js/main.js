// jsを記述する際はここに記載していく

// マーカー
// (function (document) {
//     const markers = [...document.querySelectorAll('mark')];
     
//     const observer = new IntersectionObserver(entries => {
//       entries.forEach((entry) => {
//         if (entry.intersectionRatio > 0) {
//           entry.target.style.animationPlayState = 'running';
//           observer.unobserve(entry.target);
//         }
//       });
//     }, {
//       threshold: 0.8
//     });
     
//     markers.forEach(mark => {
//       observer.observe(mark);
//     });
//   })(document);



//   @keyframes sample2bAnime {
//     0% { right : 100%; }     /* 点滅開始色        */
//    25% { right : 0;    }     /* 点滅終了色        */
//   100% { right : 0;    }     /* 点滅終了色        */
//  }