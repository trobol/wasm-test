bash -c "clang --target=wasm32 -emit-llvm -c -S main.c --include-directory include"
bash -c "llc-8 -march=wasm32 -filetype=obj main.ll"
bash -c "wasm-ld --no-entry --export-dynamic -o main.wasm main.o"
wasm-objdump -x main.o