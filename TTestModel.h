
#include <TROOT.h>
#include <TObject.h>
#include <THashTable.h>
#include <TString.h>
#include <TList.h>
#include <fstream>
#include <iostream>

class TTMTestModel:public TObject {

 public:

   TTMTestModel() 
   {
      ;
   }  
   
   ~TTMTestModel();
   
   ClassDef(TTMTestModel,1) // Base class for Test model objects

};
