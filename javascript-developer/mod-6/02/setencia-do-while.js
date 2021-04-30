/* 02 - Sentencia do while */

// Es parecido al for, se ejecutara n veces hasta que se cumpla la condicion
let isCorrect = false;

while(!isCorrect) {
    let reply = prompt('¿Cuanto es 2 + 2?');
    if(reply == '4') {
        isCorrect = true;
    }
}
/* 
let amount = 1000;

do {
    pago = parseInt(prompt('¿Cuanto quieres pagar?'));
    amount = (amount - pago);
    alert(`La deuda esta por ${amount}`);
} while(amount > 0); */