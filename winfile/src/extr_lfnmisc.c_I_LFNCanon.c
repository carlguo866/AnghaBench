
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;
typedef int TCHAR ;
typedef int* LPTSTR ;
typedef int DWORD ;


 unsigned int CCHMAXPATHCOMP ;
 int CHAR_BACKSLASH ;
 int CHAR_COLON ;
 int CHAR_DOT ;
 int CHAR_DQUOTE ;
 int CHAR_GREATER ;
 int CHAR_LESS ;
 int CHAR_NULL ;
 int CHAR_PIPE ;
 int CHAR_QUESTION ;
 int CHAR_SLASH ;
 int CHAR_SPACE ;
 int CHAR_STAR ;
 int ERROR_INVALID_PARAMETER ;
 scalar_t__ LFNCANON_MASK ;
 scalar_t__ isalpha (int) ;

DWORD
I_LFNCanon(WORD CanonType, LPTSTR InFile, LPTSTR OutFile)
{
   LPTSTR ins = InFile;
   LPTSTR outs = OutFile;
   unsigned size;
   unsigned trails;
   TCHAR c;

   if (!InFile || !OutFile)
      return ERROR_INVALID_PARAMETER;

   if (*InFile == CHAR_NULL)
      return ERROR_INVALID_PARAMETER;



   if (*InFile != CHAR_BACKSLASH && *InFile != CHAR_SLASH) {
      if (isalpha(*InFile)) {
         if (InFile[1] == CHAR_COLON) {
            *outs++ = *ins++;
            *outs++ = *ins++;
         }
      }
   } else {
      ins++;
      *outs++ = CHAR_BACKSLASH;
   }







   size = 0;
   do {
      c = *ins++;
      if ((c < 0x001f && c != CHAR_NULL) || (c == CHAR_DQUOTE) || (c == CHAR_COLON) || (c == CHAR_PIPE) ||
          (c == CHAR_GREATER) || (c == CHAR_LESS)) {
             *OutFile = CHAR_NULL;
             return ERROR_INVALID_PARAMETER;
      }
      if (CanonType != LFNCANON_MASK && ((c == CHAR_STAR) || (c == CHAR_QUESTION))) {
         *OutFile = CHAR_NULL;
         return ERROR_INVALID_PARAMETER;
      }
      if (c == CHAR_SLASH)
         c = CHAR_BACKSLASH;

      if (c == CHAR_BACKSLASH || c == CHAR_NULL) {




         if (outs > OutFile) {
            if (*(outs - 1) == CHAR_DOT) {
               if ((outs - 1) == OutFile || *(outs - 2) == CHAR_BACKSLASH) {
                  *(outs--) = c;
                  if (size)
                     size--;
                  continue;
               }
               if (*(outs - 2) == CHAR_DOT) {
                  if ((outs - 2) == OutFile || *(outs - 3) == CHAR_BACKSLASH ||
                        *(outs - 3) == CHAR_COLON) {
                     *outs++ = c;
                     size++;
                     continue;
                  }
               }
            }
         }




         trails = 0;
         while (outs > OutFile && ((*(outs-1) == CHAR_DOT || *(outs-1) == CHAR_SPACE)
                 && (*(outs-1) != CHAR_BACKSLASH && *(outs - 1) != CHAR_COLON)) ) {
            outs--;
            trails++;
            if (size)
               size--;
         }
         if (outs == OutFile) {
            *OutFile = CHAR_NULL;
            return ERROR_INVALID_PARAMETER;
         }
         if (outs > OutFile && *(outs-1) == CHAR_BACKSLASH) {
            *OutFile = CHAR_NULL;
            return ERROR_INVALID_PARAMETER;
         }
      }
      *outs++ = c;
      size++;
      if (size > CCHMAXPATHCOMP) {
         *OutFile = CHAR_NULL;
         return ERROR_INVALID_PARAMETER;
      }
   } while (c);




   if (outs != OutFile)
      if (*(outs-1) == CHAR_BACKSLASH) {
         *OutFile = CHAR_NULL;
         return ERROR_INVALID_PARAMETER;
      }

   return 0;

}
