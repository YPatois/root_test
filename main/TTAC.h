
#include <TROOT.h>
#include <TObject.h>
#include <THashTable.h>
#include <TString.h>
#include <TList.h>
#include <fstream>
#include <iostream>


#ifndef Test_TTMAC
#define Test_TTMAC

class TTMAC:public TObject {

 public:

   TTMAC() 
   {
      ;
   }  
   
   ~TTMAC();
   
   ClassDef(TTMAC,1) // Base class for Test model objects

};
#endif
