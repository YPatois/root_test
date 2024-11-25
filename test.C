// Run this code to include Thermus in your ROOT session
R__ADD_INCLUDE_PATH(local/include/unTest)
R__ADD_LIBRARY_PATH(local/lib64/unTest)
R__LOAD_LIBRARY(unTest.so)

void test()
{
   std::cout << " OK " << std::endl;
}