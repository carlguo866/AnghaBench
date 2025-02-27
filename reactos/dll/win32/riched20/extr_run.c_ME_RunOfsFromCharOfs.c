
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_21__ {int nCharOfs; int nFlags; int len; } ;
struct TYPE_20__ {int nCharOfs; TYPE_9__* next_para; } ;
struct TYPE_22__ {TYPE_6__ run; TYPE_5__ para; } ;
struct TYPE_24__ {scalar_t__ type; TYPE_7__ member; } ;
struct TYPE_23__ {TYPE_4__* pBuffer; } ;
struct TYPE_19__ {TYPE_3__* pFirst; } ;
struct TYPE_16__ {TYPE_9__* next_para; } ;
struct TYPE_17__ {TYPE_1__ para; } ;
struct TYPE_18__ {TYPE_2__ member; } ;
typedef TYPE_8__ ME_TextEditor ;
typedef TYPE_9__ ME_DisplayItem ;


 int MERF_ENDPARA ;
 TYPE_9__* ME_FindItemFwd (TYPE_9__*,scalar_t__) ;
 int ME_GetTextLength (TYPE_8__*) ;
 int assert (int) ;
 scalar_t__ diParagraph ;
 scalar_t__ diRun ;
 scalar_t__ diRunOrParagraphOrEnd ;
 int max (int,int ) ;
 int min (int,int) ;

void ME_RunOfsFromCharOfs(ME_TextEditor *editor,
                          int nCharOfs,
                          ME_DisplayItem **ppPara,
                          ME_DisplayItem **ppRun,
                          int *pOfs)
{
  ME_DisplayItem *item, *next_item;
  int endOfs = nCharOfs, len = ME_GetTextLength(editor);

  nCharOfs = max(nCharOfs, 0);
  nCharOfs = min(nCharOfs, len);


  next_item = editor->pBuffer->pFirst->member.para.next_para;
  do {
    item = next_item;
    next_item = item->member.para.next_para;
  } while (next_item->member.para.nCharOfs <= nCharOfs);
  assert(item->type == diParagraph);
  nCharOfs -= item->member.para.nCharOfs;
  if (ppPara) *ppPara = item;


  next_item = ME_FindItemFwd(item, diRun);
  do {
    item = next_item;
    next_item = ME_FindItemFwd(item, diRunOrParagraphOrEnd);
  } while (next_item->type == diRun &&
           next_item->member.run.nCharOfs <= nCharOfs);
  assert(item->type == diRun);
  nCharOfs -= item->member.run.nCharOfs;

  if (ppRun) *ppRun = item;
  if (pOfs) {
    if (((*ppRun)->member.run.nFlags & MERF_ENDPARA) && endOfs > len)
      *pOfs = (*ppRun)->member.run.len;
    else *pOfs = nCharOfs;
  }
}
