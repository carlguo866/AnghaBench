
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct section {int flags; int name; scalar_t__ id; } ;
struct TYPE_7__ {size_t level; int nb_section_packet_frame; int* nb_item; struct section** section; TYPE_3__* section_pbuf; TYPE_2__* priv; } ;
typedef TYPE_1__ WriterContext ;
struct TYPE_9__ {int str; } ;
struct TYPE_8__ {int sep_str; scalar_t__ hierarchical; } ;
typedef TYPE_2__ FlatContext ;
typedef TYPE_3__ AVBPrint ;


 int SECTION_FLAG_IS_ARRAY ;
 int SECTION_FLAG_IS_WRAPPER ;
 scalar_t__ SECTION_ID_PACKETS_AND_FRAMES ;
 int av_bprint_clear (TYPE_3__*) ;
 int av_bprintf (TYPE_3__*,char*,int,...) ;

__attribute__((used)) static void flat_print_section_header(WriterContext *wctx)
{
    FlatContext *flat = wctx->priv;
    AVBPrint *buf = &wctx->section_pbuf[wctx->level];
    const struct section *section = wctx->section[wctx->level];
    const struct section *parent_section = wctx->level ?
        wctx->section[wctx->level-1] : ((void*)0);


    av_bprint_clear(buf);
    if (!parent_section)
        return;
    av_bprintf(buf, "%s", wctx->section_pbuf[wctx->level-1].str);

    if (flat->hierarchical ||
        !(section->flags & (SECTION_FLAG_IS_ARRAY|SECTION_FLAG_IS_WRAPPER))) {
        av_bprintf(buf, "%s%s", wctx->section[wctx->level]->name, flat->sep_str);

        if (parent_section->flags & SECTION_FLAG_IS_ARRAY) {
            int n = parent_section->id == SECTION_ID_PACKETS_AND_FRAMES ?
                wctx->nb_section_packet_frame : wctx->nb_item[wctx->level-1];
            av_bprintf(buf, "%d%s", n, flat->sep_str);
        }
    }
}
