
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


typedef int uInt ;
typedef int uByte ;
struct TYPE_32__ {scalar_t__ digits; int bits; int* lsu; scalar_t__ exponent; } ;
typedef TYPE_1__ decNumber ;
struct TYPE_33__ {scalar_t__ digits; int extended; } ;
typedef TYPE_2__ decContext ;
typedef int Int ;
typedef scalar_t__ Flag ;


 int BADINT ;
 scalar_t__ COMPARE ;
 scalar_t__ COMPMAX ;
 scalar_t__ COMPMAXMAG ;
 scalar_t__ COMPMIN ;
 scalar_t__ COMPMINMAG ;
 scalar_t__ COMPNAN ;
 scalar_t__ COMPSIG ;
 scalar_t__ COMPTOTAL ;
 int D2U (scalar_t__) ;
 int DECNAN ;
 int DECNEG ;
 int DECSNAN ;
 int DEC_Insufficient_storage ;
 int DEC_Invalid_operation ;
 int DEC_sNaN ;
 scalar_t__ decCheckOperands (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,TYPE_2__*) ;
 int decCompare (TYPE_1__ const*,TYPE_1__ const*,int) ;
 int decCopyFit (TYPE_1__*,TYPE_1__ const*,TYPE_2__*,int*,int*) ;
 int decFinish (TYPE_1__*,TYPE_2__*,int*,int*) ;
 int decNaNs (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,TYPE_2__*,int*) ;
 int decNumberIsNaN (TYPE_1__ const*) ;
 int decNumberIsNegative (TYPE_1__ const*) ;
 scalar_t__ decNumberIsQNaN (TYPE_1__ const*) ;
 scalar_t__ decNumberIsSNaN (TYPE_1__ const*) ;
 int decNumberZero (TYPE_1__*) ;
 TYPE_1__* decRoundOperand (TYPE_1__ const*,TYPE_2__*,int*) ;
 int decUnitCompare (int*,int ,int*,int ,int ) ;
 int free (TYPE_1__*) ;

decNumber * decCompareOp(decNumber *res, const decNumber *lhs,
                         const decNumber *rhs, decContext *set,
                         Flag op, uInt *status) {




  Int result=0;
  uByte merged;





  do {
    if (op==COMPTOTAL) {
      if (decNumberIsNegative(lhs) & !decNumberIsNegative(rhs)) {
        result=-1;
        break;
        }
      if (!decNumberIsNegative(lhs) & decNumberIsNegative(rhs)) {
        result=+1;
        break;
        }
      }



    merged=(lhs->bits | rhs->bits) & (DECSNAN | DECNAN);
    if (merged) {
      if (op==COMPARE);
       else if (op==COMPSIG)
        *status|=DEC_Invalid_operation | DEC_sNaN;
       else if (op==COMPTOTAL) {


        if (!decNumberIsNaN(lhs)) result=-1;
         else if (!decNumberIsNaN(rhs)) result=+1;

         else if (decNumberIsSNaN(lhs) && decNumberIsQNaN(rhs)) result=-1;
         else if (decNumberIsQNaN(lhs) && decNumberIsSNaN(rhs)) result=+1;
         else {

          result=decUnitCompare(lhs->lsu, D2U(lhs->digits),
                                rhs->lsu, D2U(rhs->digits), 0);

          }
        if (decNumberIsNegative(lhs)) result=-result;
        break;
        }

       else if (merged & DECSNAN);
       else {

        if (!decNumberIsNaN(lhs) || !decNumberIsNaN(rhs)) {

          op=COMPMAX;
          if (lhs->bits & DECNAN) result=-1;
                             else result=+1;
          break;
          }
        }
      op=COMPNAN;
      decNaNs(res, lhs, rhs, set, status);
      break;
      }

    if (op==COMPMAXMAG || op==COMPMINMAG) result=decCompare(lhs, rhs, 1);
     else result=decCompare(lhs, rhs, 0);
    } while(0);

  if (result==BADINT) *status|=DEC_Insufficient_storage;
   else {
    if (op==COMPARE || op==COMPSIG ||op==COMPTOTAL) {
      if (op==COMPTOTAL && result==0) {


        if (lhs->exponent!=rhs->exponent) {
          if (lhs->exponent<rhs->exponent) result=-1;
           else result=+1;
          if (decNumberIsNegative(lhs)) result=-result;
          }
        }
      decNumberZero(res);
      if (result!=0) {
        *res->lsu=1;
        if (result<0) res->bits=DECNEG;
        }
      }
     else if (op==COMPNAN);
     else {
      Int residue=0;

      const decNumber *choice;
      if (result==0) {

        uByte slhs=(lhs->bits & DECNEG);
        uByte srhs=(rhs->bits & DECNEG);







        if (slhs!=srhs) {
          if (slhs) result=-1;
               else result=+1;
          }
         else if (slhs && srhs) {
          if (lhs->exponent<rhs->exponent) result=+1;
                                      else result=-1;

          }
         else {
          if (lhs->exponent>rhs->exponent) result=+1;
                                      else result=-1;

          }
        }

      if (op==COMPMIN || op==COMPMINMAG) result=-result;
      choice=(result>0 ? lhs : rhs);

      decCopyFit(res, choice, set, &residue, status);
      decFinish(res, set, &residue, status);
      }
    }




  return res;
  }
