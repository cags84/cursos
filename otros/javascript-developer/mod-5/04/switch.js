/* 04 - Switch */

let cardPayment = 'Mastercardss';

switch(cardPayment.toLowerCase().trim()) {
    case 'visa':
        console.log(`Tienes tarjeta ${cardPayment}`);
        break;
    case 'mastercard':
        console.log(`Tienes tarjeta ${cardPayment}`);
        break;
    case 'dinner':
        console.log(`Tienes tarjeta ${cardPayment}`);
        break;
    default:
        console.log(`Tu tarjeta ${cardPayment} no es permitida!`);
        break;
}