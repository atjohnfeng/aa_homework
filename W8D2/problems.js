// function madLib(verb, adj, noun) {

//     let a = verb.toUpperCase();
//     let b = adj.toUpperCase();
//     let c = noun.toUpperCase();

//     console.log(`We shall ${a} the ${b} ${c}.`);
// }

// madLib('make', 'best', 'guac');

function isSubstring(searchString, subString) {
    console.log(searchString.includes(subString));
}

isSubstring("hello world", "world");
isSubstring("hello world", "olleh");