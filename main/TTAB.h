#include <TROOT.h>
#include <TObject.h>
#include <TMinuit.h>
#include <fstream>
#include <iostream>

#ifndef Test_TTMAC
#include <TTAC.h>
#endif

#ifndef Test_TTMAB
#define Test_TTMAB


class TTMAB:public TObject {

   public:

  TTMAB();  
   
  ~TTMAB();

  ClassDef(TTMAB,1) // Base class for Test fit objects

};

#endif
