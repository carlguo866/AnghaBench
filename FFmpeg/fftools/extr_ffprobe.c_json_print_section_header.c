
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct section {int flags; char* name; scalar_t__ id; } ;
struct TYPE_9__ {size_t level; scalar_t__* nb_item; struct section** section; TYPE_2__* priv; } ;
typedef TYPE_1__ WriterContext ;
struct TYPE_11__ {char* str; } ;
struct TYPE_10__ {char* item_start_end; int compact; int indent_level; } ;
typedef TYPE_2__ JSONContext ;
typedef TYPE_3__ AVBPrint ;


 int AV_BPRINT_SIZE_UNLIMITED ;
 int JSON_INDENT () ;
 int SECTION_FLAG_IS_ARRAY ;
 int SECTION_FLAG_IS_WRAPPER ;
 scalar_t__ SECTION_ID_PACKETS_AND_FRAMES ;
 int av_bprint_finalize (TYPE_3__*,int *) ;
 int av_bprint_init (TYPE_3__*,int,int ) ;
 int json_escape_str (TYPE_3__*,char*,TYPE_1__*) ;
 int printf (char*,...) ;

__attribute__((used)) static void json_print_section_header(WriterContext *wctx)
{
    JSONContext *json = wctx->priv;
    AVBPrint buf;
    const struct section *section = wctx->section[wctx->level];
    const struct section *parent_section = wctx->level ?
        wctx->section[wctx->level-1] : ((void*)0);

    if (wctx->level && wctx->nb_item[wctx->level-1])
        printf(",\n");

    if (section->flags & SECTION_FLAG_IS_WRAPPER) {
        printf("{\n");
        json->indent_level++;
    } else {
        av_bprint_init(&buf, 1, AV_BPRINT_SIZE_UNLIMITED);
        json_escape_str(&buf, section->name, wctx);
        JSON_INDENT();

        json->indent_level++;
        if (section->flags & SECTION_FLAG_IS_ARRAY) {
            printf("\"%s\": [\n", buf.str);
        } else if (parent_section && !(parent_section->flags & SECTION_FLAG_IS_ARRAY)) {
            printf("\"%s\": {%s", buf.str, json->item_start_end);
        } else {
            printf("{%s", json->item_start_end);


            if (parent_section && parent_section->id == SECTION_ID_PACKETS_AND_FRAMES) {
                if (!json->compact)
                    JSON_INDENT();
                printf("\"type\": \"%s\"", section->name);
            }
        }
        av_bprint_finalize(&buf, ((void*)0));
    }
}
