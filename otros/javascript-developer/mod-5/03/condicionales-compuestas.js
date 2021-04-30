/* 03 - Condicionales compuestas */

let amount = 1000;
let balance = 500;
let card = 'dinner';
let canMakeAPayment = false;

if(card === 'visa' && balance >= (amount * 0.5)) {
    console.log('Cuentas con el beneficio ' + card + ' para cancelar la deuda');
    canMakeAPayment = true;
} else if(card === 'mastercard' && balance >= (amount * 0.8)) {
    console.log('Cuentas con el beneficio ' + card + ' para cancelar la deuda');
    canMakeAPayment = true;
} else if(card === 'dinner' && balance >= (amount * 0.9)) {
    console.log('Cuantas con el beneficio ' +  card + ' para cancelar la deudas');
    canMakeAPayment = true;
}

if(canMakeAPayment) {
    console.log('¿Quieres pagar la deuda?');
} else {
    console.log('No tienes saldo suficiente para pagar la deuda!');
}