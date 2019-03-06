(module
  (type (;0;) (func (param f32) (result f32)))
  (import "env" "memory" (memory (;0;) 2))
  (func $square (type 0) (param f32) (result f32)
    (local i32 i32 i32 f32 f32 f32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    f32.store offset=12
    local.get 3
    f32.load offset=12
    local.set 4
    local.get 3
    f32.load offset=12
    local.set 5
    local.get 4
    local.get 5
    f32.mul
    local.set 6
    local.get 6
    return)
  (table (;0;) 1 1 funcref)
  (global (;0;) (mut i32) (i32.const 66560))
  (global (;1;) i32 (i32.const 66560))
  (global (;2;) i32 (i32.const 1024))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "square" (func $square)))
