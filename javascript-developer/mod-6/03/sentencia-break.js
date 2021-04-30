/* 03 - break, continue */

// Break y continue sirven para algo parecido

for(let i=0; i <= 10; i++) {
    console.log(`Iteración ${i}`);
    if(i === 5) {
        break;
    }
}

console.log();

// Continue solo salta la operación pero el bucle sigue

for(let x=0; x <= 10; x++) {
    if(x % 2 == 0) {
        continue;
    }
    console.log(`Iteración ${x}`);
}