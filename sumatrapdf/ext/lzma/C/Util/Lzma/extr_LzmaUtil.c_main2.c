
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UInt64 ;
typedef int UInt32 ;
struct TYPE_6__ {int file; int s; } ;
struct TYPE_5__ {int file; int s; } ;
typedef TYPE_1__ CFileSeqInStream ;
typedef TYPE_2__ CFileOutStream ;
typedef scalar_t__ Bool ;


 int Decode (int *,int *) ;
 int Encode (int *,int *,int ,char*) ;
 scalar_t__ False ;
 int FileOutStream_CreateVTable (TYPE_2__*) ;
 int FileSeqInStream_CreateVTable (TYPE_1__*) ;
 int File_Close (int *) ;
 int File_Construct (int *) ;
 int File_GetLength (int *,int *) ;
 scalar_t__ InFile_Open (int *,char const*) ;
 scalar_t__ OutFile_Open (int *,char const*) ;
 int PrintError (char*,char*) ;
 int PrintErrorNumber (char*,int) ;
 int PrintHelp (char*) ;
 int PrintUserError (char*) ;
 int SZ_ERROR_DATA ;
 int SZ_ERROR_MEM ;
 int SZ_ERROR_READ ;
 int SZ_ERROR_WRITE ;
 int SZ_OK ;
 scalar_t__ True ;
 char* kCantAllocateMessage ;
 char* kCantReadMessage ;
 char* kCantWriteMessage ;
 char* kDataErrorMessage ;
 int strlen (char const*) ;

int main2(int numArgs, const char *args[], char *rs)
{
  CFileSeqInStream inStream;
  CFileOutStream outStream;
  char c;
  int res;
  int encodeMode;
  Bool useOutFile = False;

  FileSeqInStream_CreateVTable(&inStream);
  File_Construct(&inStream.file);

  FileOutStream_CreateVTable(&outStream);
  File_Construct(&outStream.file);

  if (numArgs == 1)
  {
    PrintHelp(rs);
    return 0;
  }

  if (numArgs < 3 || numArgs > 4 || strlen(args[1]) != 1)
    return PrintUserError(rs);

  c = args[1][0];
  encodeMode = (c == 'e' || c == 'E');
  if (!encodeMode && c != 'd' && c != 'D')
    return PrintUserError(rs);

  {
    size_t t4 = sizeof(UInt32);
    size_t t8 = sizeof(UInt64);
    if (t4 != 4 || t8 != 8)
      return PrintError(rs, "Incorrect UInt32 or UInt64");
  }

  if (InFile_Open(&inStream.file, args[2]) != 0)
    return PrintError(rs, "Can not open input file");

  if (numArgs > 3)
  {
    useOutFile = True;
    if (OutFile_Open(&outStream.file, args[3]) != 0)
      return PrintError(rs, "Can not open output file");
  }
  else if (encodeMode)
    PrintUserError(rs);

  if (encodeMode)
  {
    UInt64 fileSize;
    File_GetLength(&inStream.file, &fileSize);
    res = Encode(&outStream.s, &inStream.s, fileSize, rs);
  }
  else
  {
    res = Decode(&outStream.s, useOutFile ? &inStream.s : ((void*)0));
  }

  if (useOutFile)
    File_Close(&outStream.file);
  File_Close(&inStream.file);

  if (res != SZ_OK)
  {
    if (res == SZ_ERROR_MEM)
      return PrintError(rs, kCantAllocateMessage);
    else if (res == SZ_ERROR_DATA)
      return PrintError(rs, kDataErrorMessage);
    else if (res == SZ_ERROR_WRITE)
      return PrintError(rs, kCantWriteMessage);
    else if (res == SZ_ERROR_READ)
      return PrintError(rs, kCantReadMessage);
    return PrintErrorNumber(rs, res);
  }
  return 0;
}
