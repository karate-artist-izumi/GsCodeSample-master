
//引数dataをHTMLに表示
function htmlPokemon(data){
    const html_inn = `
        <div>
            ${data.id}
            ${data.name}
            <img src="${data.sprites.front_default}" />
        </div>
    `;
    //HTMLに追加
    $(".list").append(html_inn);
}

//ポケモンAPIから一行のデータを受け取る
const pokemonData = async (poke_id) => {
    // APIのpoke_id番データを指定
    const poke_url = `https://pokeapi.co/api/v2/pokemon/${poke_id}`;
    // poke_id番のデータをpoke_fetchに格納
    const poke_fetch = await fetch(poke_url);
    // データをJSON形式に変換
    const poke_json = await poke_fetch.json();
    // 受け取ったJSONデータをHTMLに代入して表示
    htmlPokemon(poke_json);
};
//任意の一行だけ表示
pokemonData(25);


const num = 6;
//num回数分、APIからデータを受け取る
const pokemonNum = async () => {
    for (let i = 0; i < num; i++) {
        await pokemonData(i + 1);
    }
};

pokemonNum();