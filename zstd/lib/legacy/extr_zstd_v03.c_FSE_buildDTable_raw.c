
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ptr ;
typedef scalar_t__ U16 ;
struct TYPE_4__ {int fastMode; scalar_t__ tableLog; } ;
struct TYPE_3__ {void* nbBits; void* symbol; scalar_t__ newState; } ;
typedef TYPE_1__ FSE_decode_t ;
typedef TYPE_2__ FSE_DTableHeader ;
typedef int FSE_DTable ;
typedef void* BYTE ;


 size_t ERROR (int ) ;
 int GENERIC ;

__attribute__((used)) static size_t FSE_buildDTable_raw (FSE_DTable* dt, unsigned nbBits)
{
    void* ptr = dt;
    FSE_DTableHeader* const DTableH = (FSE_DTableHeader*)ptr;
    FSE_decode_t* const dinfo = (FSE_decode_t*)(ptr) + 1;
    const unsigned tableSize = 1 << nbBits;
    const unsigned tableMask = tableSize - 1;
    const unsigned maxSymbolValue = tableMask;
    unsigned s;


    if (nbBits < 1) return ERROR(GENERIC);


    DTableH->tableLog = (U16)nbBits;
    DTableH->fastMode = 1;
    for (s=0; s<=maxSymbolValue; s++)
    {
        dinfo[s].newState = 0;
        dinfo[s].symbol = (BYTE)s;
        dinfo[s].nbBits = (BYTE)nbBits;
    }

    return 0;
}
