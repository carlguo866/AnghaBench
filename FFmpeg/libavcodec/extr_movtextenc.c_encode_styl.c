
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int box_flags; int count; int style_entries; int style_fontID; int style_fontsize; int style_color; int buffer; TYPE_1__** style_attributes; } ;
struct TYPE_5__ {int style_start; int style_end; int style_flag; } ;
typedef TYPE_2__ MovTextContext ;


 int AV_RB16 (int*) ;
 int AV_RB32 (int*) ;
 int MKTAG (int,int,int,int) ;
 int SIZE_ADD ;
 int STYLE_RECORD_SIZE ;
 int STYL_BOX ;
 int av_bprint_append_any (int *,int*,int) ;
 int mov_text_cleanup (TYPE_2__*) ;

__attribute__((used)) static void encode_styl(MovTextContext *s, uint32_t tsmb_type)
{
    int j;
    uint32_t tsmb_size;
    if (s->box_flags & STYL_BOX) {
        tsmb_size = s->count * STYLE_RECORD_SIZE + SIZE_ADD;
        tsmb_size = AV_RB32(&tsmb_size);
        s->style_entries = AV_RB16(&s->count);
        s->style_fontID = 0x00 | 0x01<<8;
        s->style_fontsize = 0x12;
        s->style_color = MKTAG(0xFF, 0xFF, 0xFF, 0xFF);


        av_bprint_append_any(&s->buffer, &tsmb_size, 4);
        av_bprint_append_any(&s->buffer, &tsmb_type, 4);
        av_bprint_append_any(&s->buffer, &s->style_entries, 2);
        for (j = 0; j < s->count; j++) {
            av_bprint_append_any(&s->buffer, &s->style_attributes[j]->style_start, 2);
            av_bprint_append_any(&s->buffer, &s->style_attributes[j]->style_end, 2);
            av_bprint_append_any(&s->buffer, &s->style_fontID, 2);
            av_bprint_append_any(&s->buffer, &s->style_attributes[j]->style_flag, 1);
            av_bprint_append_any(&s->buffer, &s->style_fontsize, 1);
            av_bprint_append_any(&s->buffer, &s->style_color, 4);
        }
        mov_text_cleanup(s);
    }
}
