function numReverse(num) {
  let length = 0;
  let numCopy = num;
  let digit = 10;

  while (numCopy) {
    if (numCopy % 10 >= digit) {
      return 0;
    }

    length += 1;
    digit = numCopy % 10;
    numCopy = Math.floor(numCopy / 10);
  }

  for (let i = 0; i < length; i++) {
    numCopy = numCopy * 10 + num % 10;
    num = Math.floor(num / 10);
  }

  return length > 1 ? numCopy : 0;
}

let count = parseInt(prompt("Enter the count:"));

while (count > 0) {
  let number = parseInt(prompt("Enter a number:"));
  let result = numReverse(number);

  if (result !== 0) {
    console.log(result);
  }

  count -= 1;
}