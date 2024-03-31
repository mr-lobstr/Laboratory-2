let countMatch = 0;
let nextRound = parseInt(prompt());

while (nextRound > 1) {
    if (nextRound % 2 === 1) {
        nextRound = Math.floor((nextRound - 1) / 2) + 1;
        countMatch += nextRound - 1;
    } else {
        nextRound = Math.floor(nextRound / 2);
        countMatch += nextRound;
    }
}

console.log(countMatch);
