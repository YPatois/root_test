// Run this code to include Thermus in your ROOT session
R__ADD_LIBRARY_PATH(build)
R__LOAD_LIBRARY(unTest.so)

void test2()
{
   std::cout << " OK " << std::endl;
}