
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* frame; } ;
struct TYPE_4__ {int * linesize; } ;
typedef TYPE_2__ SeqVideoContext ;


 int memcpy (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static const unsigned char *seq_decode_op2(SeqVideoContext *seq,
                                           const unsigned char *src,
                                           const unsigned char *src_end,
                                           unsigned char *dst)
{
    int i;

    if (src_end - src < 8 * 8)
        return ((void*)0);

    for (i = 0; i < 8; i++) {
        memcpy(dst, src, 8);
        src += 8;
        dst += seq->frame->linesize[0];
    }

    return src;
}
