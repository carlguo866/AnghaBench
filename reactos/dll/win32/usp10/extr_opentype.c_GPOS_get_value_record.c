
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_3__ {void* YAdvDevice; void* XAdvDevice; void* YPlaDevice; void* XPlaDevice; void* YAdvance; void* XAdvance; void* YPlacement; void* XPlacement; } ;
typedef size_t INT ;
typedef TYPE_1__ GPOS_ValueRecord ;


 void* GET_BE_WORD (int const) ;

__attribute__((used)) static INT GPOS_get_value_record(WORD ValueFormat, const WORD data[], GPOS_ValueRecord *record)
{
    INT offset = 0;
    if (ValueFormat & 0x0001) { if (data) record->XPlacement = GET_BE_WORD(data[offset]); offset++; }
    if (ValueFormat & 0x0002) { if (data) record->YPlacement = GET_BE_WORD(data[offset]); offset++; }
    if (ValueFormat & 0x0004) { if (data) record->XAdvance = GET_BE_WORD(data[offset]); offset++; }
    if (ValueFormat & 0x0008) { if (data) record->YAdvance = GET_BE_WORD(data[offset]); offset++; }
    if (ValueFormat & 0x0010) { if (data) record->XPlaDevice = GET_BE_WORD(data[offset]); offset++; }
    if (ValueFormat & 0x0020) { if (data) record->YPlaDevice = GET_BE_WORD(data[offset]); offset++; }
    if (ValueFormat & 0x0040) { if (data) record->XAdvDevice = GET_BE_WORD(data[offset]); offset++; }
    if (ValueFormat & 0x0080) { if (data) record->YAdvDevice = GET_BE_WORD(data[offset]); offset++; }
    return offset;
}
