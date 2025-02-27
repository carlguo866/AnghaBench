
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char* Cursor ;
 char* InputBuf ;
 char* LastChar ;
 int MISMATCH (char) ;
 int RECOGNIZE ;
 scalar_t__ iscmdmeta (char) ;
 scalar_t__ ismetahash (char) ;
 scalar_t__ starting_a_command (char*,char*) ;
 int tenematch (char*,int,int ) ;

__attribute__((used)) static int
CompleteLine(void)
{
    int endflag, tmatch;
    Char *argptr, *OldCursor, *OldLastChar;

    OldLastChar = LastChar;
    OldCursor = Cursor;
    argptr = InputBuf;
    endflag = 1;
    do {
 while (ismetahash(*argptr) || iscmdmeta(*argptr))
     argptr++;
 for (Cursor = argptr;
      *Cursor != '\0' && ((Cursor != argptr && Cursor[-1] == '\\') ||
     (!ismetahash(*Cursor) && !iscmdmeta(*Cursor)));
      Cursor++)
      continue;
 if (*Cursor == '\0') {
     Cursor = LastChar;
     if (LastChar[-1] == '\n')
  Cursor--;
     endflag = 0;
 }
 if (!MISMATCH(*argptr) && starting_a_command(argptr, InputBuf)) {
     tmatch = tenematch(InputBuf, Cursor - InputBuf, RECOGNIZE);
     if (tmatch <= 0) {
                return 0;
            } else if (tmatch > 1) {
                return 2;
     }
     if (LastChar != OldLastChar) {
  if (argptr < OldCursor)
      OldCursor += (LastChar - OldLastChar);
  OldLastChar = LastChar;
     }
 }
 argptr = Cursor;
    } while (endflag);
    Cursor = OldCursor;
    return 1;
}
