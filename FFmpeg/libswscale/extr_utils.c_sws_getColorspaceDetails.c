
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SwsContext {int* srcColorspaceTable; int* dstColorspaceTable; int srcRange; int dstRange; int brightness; int contrast; int saturation; } ;



int sws_getColorspaceDetails(struct SwsContext *c, int **inv_table,
                             int *srcRange, int **table, int *dstRange,
                             int *brightness, int *contrast, int *saturation)
{
    if (!c )
        return -1;

    *inv_table = c->srcColorspaceTable;
    *table = c->dstColorspaceTable;
    *srcRange = c->srcRange;
    *dstRange = c->dstRange;
    *brightness = c->brightness;
    *contrast = c->contrast;
    *saturation = c->saturation;

    return 0;
}
