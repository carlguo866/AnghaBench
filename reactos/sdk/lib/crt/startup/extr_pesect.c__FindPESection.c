
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ e_lfanew; } ;
struct TYPE_10__ {unsigned int NumberOfSections; } ;
struct TYPE_12__ {TYPE_2__ FileHeader; } ;
struct TYPE_9__ {scalar_t__ VirtualSize; } ;
struct TYPE_11__ {scalar_t__ VirtualAddress; TYPE_1__ Misc; } ;
typedef TYPE_3__* PIMAGE_SECTION_HEADER ;
typedef TYPE_4__* PIMAGE_NT_HEADERS ;
typedef TYPE_5__* PIMAGE_DOS_HEADER ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ DWORD_PTR ;


 TYPE_3__* IMAGE_FIRST_SECTION (TYPE_4__*) ;

PIMAGE_SECTION_HEADER
_FindPESection (PBYTE pImageBase, DWORD_PTR rva)
{
  PIMAGE_NT_HEADERS pNTHeader;
  PIMAGE_SECTION_HEADER pSection;
  unsigned int iSection;

  pNTHeader = (PIMAGE_NT_HEADERS) (pImageBase + ((PIMAGE_DOS_HEADER) pImageBase)->e_lfanew);

  for (iSection = 0, pSection = IMAGE_FIRST_SECTION (pNTHeader);
    iSection < pNTHeader->FileHeader.NumberOfSections;
    ++iSection,++pSection)
    {
      if (rva >= pSection->VirtualAddress
   && rva < pSection->VirtualAddress + pSection->Misc.VirtualSize)
 return pSection;
    }
  return ((void*)0);
}
