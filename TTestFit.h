#include <TROOT.h>
#include <TObject.h>
#include <TMinuit.h>
#include <fstream>
#include <iostream>

#ifndef Test_TTMTestModel
#include <TTestModel.h>
#endif

#ifndef Test_TTMTestFit
#define Test_TTMTestFit


class TTMTestFit:public TObject {

   public:

  TTMTestFit();  
   
  ~TTMTestFit();

  ClassDef(TTMTestFit,1) // Base class for Test fit objects

};

#endif
