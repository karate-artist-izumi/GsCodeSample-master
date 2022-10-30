// const data = {
//     name : 'izumi',
//     age : 39,
//     hobby : {
//         0 : 'KARATE',
//         1 : 'bike'
//     }
// };

// console.log(data);
// console.log(data.name);
// console.log(data.hobby[1]);

// $(".links").on("click",function(){
//     location.href = "https://yahoo.co.jp";
// });


//データを受け取る
const getPokemon = async (id) => {
    const url = `https://pokeapi.co/api/v2/pokemon/${id}`;
    const res = await fetch(url);
    const pokemon = await res.json();
    // データの塊を渡す
    createPokemon(pokemon);
};


//データを表示する
function createPokemon(pokemon) {
    const poke = `
        <div>
        ${pokemon.id}
        ${pokemon.name}
        ${pokemon.height}
        <img src="${pokemon.sprites.front_default}" />
        </div>
    `;
    
    $(".list").append(poke);
}

const pokemonNum = 10;
//回数分データを回す
const fetchPokemons = async () => {
    for (let i = 1; i <= pokemonNum; i++) {
        await getPokemon(i);
    }
};


$(".btn").on("click",function(){    
    // 実行するぞという意味
    fetchPokemons();
});

