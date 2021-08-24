// function madLib(verb, adj, noun) {

//     let a = verb.toUpperCase();
//     let b = adj.toUpperCase();
//     let c = noun.toUpperCase();

//     console.log(`We shall ${a} the ${b} ${c}.`);
// }

// madLib('make', 'best', 'guac');

// function isSubstring(searchString, subString) {
//     console.log(searchString.includes(subString));
// }

// isSubstring("hello world", "world");
// isSubstring("hello world", "olleh");

function fizzBuzz(array) {

    let fizzy = [];

    for (let i = 0; i < array.length; i++) {
        if ((array[i] % 3 === 0 || array[i] % 5 === 0) && !(array[i] % 3 === 0 && array[i] % 5 === 0)) {
            fizzy.push(array[i]);
        }
    }

    console.log(fizzy);
}

fizzBuzz([1,2,3,4,5,15]);