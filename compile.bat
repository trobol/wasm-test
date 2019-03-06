clang++ --target=wasm32 main.cpp -c -o main.wasm
wasm-ld main.wasm -o main.wasm --no-entry --export=square --import-memory
wasm2wat main.wasm -o main.wast