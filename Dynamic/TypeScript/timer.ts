import promptSync from 'prompt-sync';
const prompt = promptSync();

(async () => {
    let s = prompt('Enter the time in seconds: ');
    let t = parseInt(s);

    while (t) {
        let mins = Math.floor(t / 60);
        let secs = t % 60;
        // process.stdout.write(String(mins).padStart(2, '0') + ':' + String(secs).padStart(2, '0') + '\r');
        await new Promise(f => setTimeout(f, 1000));
        t--;
    }


})();