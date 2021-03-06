#include "A.hpp"
#include "B.hpp"
// extern "C" will cause the C++ compiler
// (remember, this is still C++ code!) to
// compile the function in such a way that
// it can be called from C
// (and Swift).
extern "C" int getResultFromCPP(int in)
{
    // Create an instance of A, defined in
    // the library, and call getInt() on it:
    A test;
    
    return test.multiplyByTwo(in);
}

extern "C" int getResultFromCPP2(int in1, int in2)
{
    // Create an instance of A, defined in
    // the library, and call getInt() on it:
    B test;
    
    return test.sumTwoValuesOnGPU(in1,in2);
}
