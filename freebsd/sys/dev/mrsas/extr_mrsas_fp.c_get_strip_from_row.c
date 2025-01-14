
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
typedef size_t u_int32_t ;
struct mrsas_softc {TYPE_5__* log_to_span; } ;
struct TYPE_21__ {scalar_t__ span_row_data_width; scalar_t__ data_row_end; scalar_t__ data_row_start; scalar_t__* strip_offset; scalar_t__ data_strip_start; } ;
struct TYPE_16__ {TYPE_3__* ldSpanMap; } ;
struct TYPE_20__ {TYPE_4__ raidMap; } ;
struct TYPE_19__ {size_t spanDepth; } ;
struct TYPE_18__ {scalar_t__ logStart; scalar_t__ logEnd; int diff; } ;
struct TYPE_17__ {TYPE_9__* span_set; } ;
struct TYPE_15__ {TYPE_2__* spanBlock; } ;
struct TYPE_13__ {size_t noElements; TYPE_6__* quad; } ;
struct TYPE_14__ {TYPE_1__ block_span_info; } ;
typedef TYPE_5__* PLD_SPAN_INFO ;
typedef TYPE_6__ MR_QUAD_ELEMENT ;
typedef TYPE_7__ MR_LD_RAID ;
typedef TYPE_8__ MR_DRV_RAID_MAP_ALL ;
typedef TYPE_9__ LD_SPAN_SET ;


 size_t MAX_QUAD_DEPTH ;
 int MRSAS_PRL11 ;
 TYPE_7__* MR_LdRaidGet (size_t,TYPE_8__*) ;
 scalar_t__ mega_div64_32 (scalar_t__,int ) ;
 scalar_t__ mega_mod64 (scalar_t__,int ) ;
 int mrsas_dprint (struct mrsas_softc*,int ,char*,size_t,unsigned long) ;

__attribute__((used)) static u_int64_t
get_strip_from_row(struct mrsas_softc *sc,
    u_int32_t ld, u_int64_t row, MR_DRV_RAID_MAP_ALL * map)
{
 MR_LD_RAID *raid = MR_LdRaidGet(ld, map);
 LD_SPAN_SET *span_set;
 MR_QUAD_ELEMENT *quad;
 PLD_SPAN_INFO ldSpanInfo = sc->log_to_span;
 u_int32_t span, info;
 u_int64_t strip;

 for (info = 0; info < MAX_QUAD_DEPTH; info++) {
  span_set = &(ldSpanInfo[ld].span_set[info]);

  if (span_set->span_row_data_width == 0)
   break;
  if (row > span_set->data_row_end)
   continue;

  for (span = 0; span < raid->spanDepth; span++)
   if (map->raidMap.ldSpanMap[ld].spanBlock[span].
       block_span_info.noElements >= info + 1) {
    quad = &map->raidMap.ldSpanMap[ld].
        spanBlock[span].block_span_info.quad[info];
    if (quad->logStart <= row &&
        row <= quad->logEnd &&
        mega_mod64((row - quad->logStart),
        quad->diff) == 0) {
     strip = mega_div64_32
         (((row - span_set->data_row_start)
         - quad->logStart),
         quad->diff);
     strip *= span_set->span_row_data_width;
     strip += span_set->data_strip_start;
     strip += span_set->strip_offset[span];
     return strip;
    }
   }
 }
 mrsas_dprint(sc, MRSAS_PRL11, "AVAGO Debug - get_strip_from_row: returns invalid "
     "strip for ld=%x, row=%lx\n", ld, (long unsigned int)row);
 return -1;
}
