const prompt = require('prompt-sync')();
const sleep = ms => new Promise(r => setTimeout(r, ms));

async function main() {
    let t = prompt('Enter the time in seconds: ');
    while (t) {
        var mins = Math.floor(t / 60);
        var secs = t % 60;
        //TODO: formatting
        process.stdout.write(mins + ":" + secs + "\r");
        await sleep(1000);
        t -= 1;
    }
}

main();