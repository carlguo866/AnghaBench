
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filename; int TH; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef TYPE_2__ TocEntry ;
typedef int ArchiveHandle ;


 int tarOpen (int *,int ,char) ;

__attribute__((used)) static void
_StartData(ArchiveHandle *AH, TocEntry *te)
{
 lclTocEntry *tctx = (lclTocEntry *) te->formatData;

 tctx->TH = tarOpen(AH, tctx->filename, 'w');
}
