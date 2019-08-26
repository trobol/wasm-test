#include <wasm.h>

f32 export square(float a)
{
	return a * a;
}

/*
	const float *setup(int length) {
		array = float[length];
		return array;
	}

	void test() {
		for(int i = 0; i < length; i++) {
			
		}
	}
	*/
