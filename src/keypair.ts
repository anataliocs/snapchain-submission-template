import { Keypair } from "@stellar/stellar-sdk";

export function setupRandomKeypair(element: HTMLDivElement) {
    let paragraph = element.querySelector('p')!
    let button = element.querySelector('button')!

    const newKeypair = () => {
        let kp = Keypair.random();
        paragraph.innerHTML = `<strong>Public:</strong> ${kp.publicKey()}<br />`;
        paragraph.innerHTML += `<strong>Secret:</strong> ${kp.secret()}`;
    }

    button.addEventListener('click', () => newKeypair());
    newKeypair()
}

// function spitOutRandomPublicKey() {
//     console.log('have a public key:', Keypair.random().publicKey())
// }

// export function addLoginButton(element: HTMLButtonElement) {
//     element.addEventListener('click', () => spitOutRandomPublicKey())
// }
