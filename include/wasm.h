#ifndef __GNUC__
#define __attribute__(x)
#endif
#ifdef __cplusplus
#define export __attribute__((visibility("default"))) extern "C"
#else
#define export __attribute__((visibility("default")))
#endif

typedef int i32;
typedef long long int i64;

typedef float f32;
typedef double f64;

extern unsigned char __data_end;
extern unsigned char __heap_base;
