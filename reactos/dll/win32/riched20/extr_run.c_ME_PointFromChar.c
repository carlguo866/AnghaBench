
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int texthost; } ;
typedef TYPE_1__ ME_TextEditor ;
typedef int ME_Run ;
typedef int ME_Context ;
typedef int BOOL ;


 int ITextHost_TxGetDC (int ) ;
 int ME_DestroyContext (int *) ;
 int ME_InitContext (int *,TYPE_1__*,int ) ;
 int ME_PointFromCharContext (int *,int *,int,int ) ;

int ME_PointFromChar(ME_TextEditor *editor, ME_Run *pRun, int nOffset, BOOL visual_order)
{
    ME_Context c;
    int ret;

    ME_InitContext(&c, editor, ITextHost_TxGetDC(editor->texthost));
    ret = ME_PointFromCharContext( &c, pRun, nOffset, visual_order );
    ME_DestroyContext(&c);

    return ret;
}
