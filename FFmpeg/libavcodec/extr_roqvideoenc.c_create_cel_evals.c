
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int sourceX; int sourceY; } ;
struct TYPE_7__ {int width; int height; } ;
struct TYPE_6__ {TYPE_5__* cel_evals; } ;
typedef TYPE_1__ RoqTempdata ;
typedef TYPE_2__ RoqContext ;
typedef int CelEvaluation ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_5__* av_malloc_array (int,int) ;

__attribute__((used)) static int create_cel_evals(RoqContext *enc, RoqTempdata *tempData)
{
    int n=0, x, y, i;

    tempData->cel_evals = av_malloc_array(enc->width*enc->height/64, sizeof(CelEvaluation));
    if (!tempData->cel_evals)
        return AVERROR(ENOMEM);


    for (y=0; y<enc->height; y+=16)
        for (x=0; x<enc->width; x+=16)
            for(i=0; i<4; i++) {
                tempData->cel_evals[n ].sourceX = x + (i&1)*8;
                tempData->cel_evals[n++].sourceY = y + (i&2)*4;
            }

    return 0;
}
