
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int GISTTYPE ;
typedef int ArrayType ;


 int ARRNELEMS (int *) ;
 int * ARRPTR (int *) ;
 int CHECKARRVALID (int *) ;
 scalar_t__ GETBIT (int ,int ) ;
 int GETSIGN (int *) ;
 int HASHVAL (int ) ;

__attribute__((used)) static bool
_intbig_overlap(GISTTYPE *a, ArrayType *b)
{
 int num = ARRNELEMS(b);
 int32 *ptr = ARRPTR(b);

 CHECKARRVALID(b);

 while (num--)
 {
  if (GETBIT(GETSIGN(a), HASHVAL(*ptr)))
   return 1;
  ptr++;
 }

 return 0;
}
