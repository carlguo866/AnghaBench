
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;


 int TIFFReadDirEntryErrOk ;
 int TIFFReadDirEntryErrRange ;

__attribute__((used)) static enum TIFFReadDirEntryErr
TIFFReadDirEntryCheckRangeLong8Slong(int32 value)
{
 if (value < 0)
  return(TIFFReadDirEntryErrRange);
 else
  return(TIFFReadDirEntryErrOk);
}
