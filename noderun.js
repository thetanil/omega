const fs = require('fs');
const source = fs.readFileSync('./main.wasm');

WebAssembly.instantiate(source, { env: { print: (x) => console.log(x) } })
    .then((result) => {
        const add = result.instance.exports.add;
        add(1, 2);
    });