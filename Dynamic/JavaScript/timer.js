const prompt = require('prompt-sync')();
const sleep = ms => new Promise(r => setTimeout(r, ms));

async function main() {
    let t = prompt('Enter the time in seconds: ');
    while (t) {
        var mins = Math.floor(t / 60);
        var secs = t % 60;
        process.stdout.write(String(mins).padStart(2, '0') + ':' + String(secs).padStart(2, '0') + '\r');
        await sleep(1000);
        t--;
    }
}

main();