//Write a function in your preferred language to reverse a string.
import * as readline from 'readline';


const rl = readline.createInterface({input: process.stdin, output:process.stdout})

const stringReverse = (str: string) : string=>{
    return str.split('').reverse().join('');
}

rl.question("Enter String to reverse: \n", (str: string)=>{
    const reversedString =  stringReverse(str)
    console.log("Reverse String: ", reversedString)
    rl.close();
})







