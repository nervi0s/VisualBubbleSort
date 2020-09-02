const fs = require('fs');

let numbers = [];

for (let i = 1; i <= 100; i++) {
    numbers.push(getRandomInt(100, 500))
}

fs.writeFile("./numbers.txt", numbers.toString(), "utf8", (err) => {
    if (err) {
        console.log(err);
    }
})

console.log(numbers);

function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min) + min); //The maximum is exclusive and the minimum is inclusive
}