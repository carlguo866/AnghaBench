
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {long e_lfanew; scalar_t__ e_magic; } ;
struct TYPE_5__ {int PointerToSymbolTable; int NumberOfSymbols; int NumberOfSections; } ;
struct TYPE_6__ {scalar_t__ Signature; TYPE_1__ FileHeader; } ;
typedef scalar_t__ PSTAB_ENTRY ;
typedef scalar_t__ PIMAGE_SYMBOL ;
typedef TYPE_2__* PIMAGE_NT_HEADERS ;
typedef TYPE_3__* PIMAGE_DOS_HEADER ;
typedef char* LPSTR ;
typedef int IMAGE_SYMBOL ;
typedef int IMAGE_SECTION_HEADER ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (char*,int,int ,int *,int ,int ,int ) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ IMAGE_DOS_SIGNATURE ;
 int IMAGE_FIRST_SECTION (TYPE_2__*) ;
 scalar_t__ IMAGE_NT_SIGNATURE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int find_stab_sections (void*,int ,int,scalar_t__*,int*,char**,int*) ;
 int printf (char*,...) ;
 int process_stabs (char*,scalar_t__,int ,int,void*,scalar_t__,int,char*,int,char*,int,char*,int) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 scalar_t__ ulGlobalVerbose ;

int process_pe(char* filename,int file,void* p,int len)
{

 PIMAGE_DOS_HEADER pDosHeader;
 PIMAGE_NT_HEADERS pNTHeaders;

 char* pStr;
 PSTAB_ENTRY pStab;
 DWORD nStabLen,nSym;
 char* pStrTab;
 char* pSymTab;

 char szSymName[2048];
 HANDLE fileout;
 int nSymStrLen,nStabStrLen;
    int iRetVal = 0;

 pDosHeader = (PIMAGE_DOS_HEADER)p;
 pNTHeaders = (PIMAGE_NT_HEADERS)((DWORD)p + pDosHeader->e_lfanew);

    if ((pDosHeader->e_magic == IMAGE_DOS_SIGNATURE)
       && (pDosHeader->e_lfanew != 0L)
       && (pNTHeaders->Signature == IMAGE_NT_SIGNATURE))
    {
  if( pNTHeaders->FileHeader.PointerToSymbolTable ){

   pSymTab = (char*)((DWORD)p + pNTHeaders->FileHeader.PointerToSymbolTable);
   nSym = pNTHeaders->FileHeader.NumberOfSymbols;


   pStrTab = (char*)((PIMAGE_SYMBOL)pSymTab + nSym);
   nSymStrLen = *((DWORD*)pStrTab);
   find_stab_sections(p,IMAGE_FIRST_SECTION(pNTHeaders),pNTHeaders->FileHeader.NumberOfSections,
     &pStab,&nStabLen,&pStr,&nStabStrLen);

   if(pStab && nStabLen && pStr && nStabStrLen)
   {
    LPSTR pDot;

    strcpy(szSymName,filename);

    if((pDot = strchr(szSymName,'.')))
    {
     *pDot = 0;
     strcat(pDot,".dbg");
    }
    else
    {
     strcat(szSymName,".dbg");
    }

             printf("LOADER: creating symbol file %s for %s\n",szSymName,filename);

    fileout = CreateFile(szSymName,
             GENERIC_READ | GENERIC_WRITE,
             0,
             ((void*)0),
             CREATE_ALWAYS,
             0,
             0);

             if(fileout != INVALID_HANDLE_VALUE)
    {
     printf("NumberOfSections: %d, size: %d\n", pNTHeaders->FileHeader.NumberOfSections,sizeof(IMAGE_SECTION_HEADER));
     process_stabs(szSymName,
          fileout,
          IMAGE_FIRST_SECTION(pNTHeaders),
          pNTHeaders->FileHeader.NumberOfSections*sizeof(IMAGE_SECTION_HEADER),
          p,
          pStab,
          nStabLen,
          pStr,
          nStabStrLen,
          (char*)pSymTab,
          nSym*sizeof(IMAGE_SYMBOL),
          pStrTab,
          nSymStrLen);

     CloseHandle(fileout);
    }
             else
             {
                 printf("LOADER: creation of symbol file %s failed\n",szSymName);
     iRetVal = 2;
             }

   }
         else
         {
             printf("LOADER: file %s has no data inside symbol tables\n",filename);
    if( ulGlobalVerbose )
    {
                 if( !pStab || !nStabLen )
                     printf("LOADER: - symbol table is empty or not present\n");
                 if( !pStr || !nStabStrLen )
                     printf("LOADER: - string table is empty or not present\n");
    }
             iRetVal = 2;
         }
  }
  else{
            printf("LOADER: file %s does not have a symbol table\n",filename);
            iRetVal = 2;
  }
    }
    else
    {
        printf("LOADER: file %s is not an ELF binary\n",filename);
        iRetVal = 1;
    }


    return iRetVal;
}
