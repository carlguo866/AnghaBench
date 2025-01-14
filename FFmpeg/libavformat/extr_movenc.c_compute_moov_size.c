
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* priv_data; } ;
struct TYPE_7__ {int nb_streams; TYPE_1__* tracks; } ;
struct TYPE_6__ {int data_offset; } ;
typedef TYPE_2__ MOVMuxContext ;
typedef TYPE_3__ AVFormatContext ;


 int get_moov_size (TYPE_3__*) ;

__attribute__((used)) static int compute_moov_size(AVFormatContext *s)
{
    int i, moov_size, moov_size2;
    MOVMuxContext *mov = s->priv_data;

    moov_size = get_moov_size(s);
    if (moov_size < 0)
        return moov_size;

    for (i = 0; i < mov->nb_streams; i++)
        mov->tracks[i].data_offset += moov_size;

    moov_size2 = get_moov_size(s);
    if (moov_size2 < 0)
        return moov_size2;



    if (moov_size2 != moov_size)
        for (i = 0; i < mov->nb_streams; i++)
            mov->tracks[i].data_offset += moov_size2 - moov_size;

    return moov_size2;
}
