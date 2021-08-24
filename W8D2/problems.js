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

// function fizzBuzz(array) {

//     let fizzy = [];

//     for (let i = 0; i < array.length; i++) {
//         if ((array[i] % 3 === 0 || array[i] % 5 === 0) && !(array[i] % 3 === 0 && array[i] % 5 === 0)) {
//             fizzy.push(array[i]);
//         }
//     }

//     console.log(fizzy);
// }

// fizzBuzz([1,2,3,4,5,15]);

function isPrime(num) {
    for (let i = 2; i < num; i++) {
        if (num % i === 0) {
            return false;
        }
    }
    return num !== 1 && num !== 0;
}

console.log(isPrime(2));
console.log(isPrime(10));
console.log(isPrime(15485863));

function sumOfNPrimes(num) {

    let sum = 0;
    let i = 0;
    let x = 2;

    while (i < num) {
        if (isPrime(x)) {
            sum += x;
            i++;
        }
        x++;
    }

    return sum;

}

console.log(sumOfNPrimes(0))
console.log(sumOfNPrimes(1))
console.log(sumOfNPrimes(4))