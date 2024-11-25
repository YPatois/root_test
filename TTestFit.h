#include <TROOT.h>
#include <TObject.h>
#include <TMinuit.h>
#include <fstream>
#include <iostream>

#include <TTestModel.h>

class TTMTestFit:public TObject {

   public:

  TTMTestFit();  
   
  ~TTMTestFit();

  ClassDef(TTMTestFit,1) // Base class for Test fit objects

};
