
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_12__ {int * pszCaption; } ;
struct TYPE_9__ {scalar_t__ nStartPage; } ;
struct TYPE_11__ {int dwFlags; TYPE_1__ u2; int nPages; int pszCaption; scalar_t__ pfnCallback; int hInstance; int hwndParent; int dwSize; } ;
struct TYPE_10__ {int useCallback; scalar_t__ active_page; int nPages; TYPE_4__ ppshheader; } ;
typedef TYPE_2__ PropSheetInfo ;
typedef int PROPSHEETHEADERA ;
typedef TYPE_3__* LPCPROPSHEETHEADERA ;
typedef int DWORD ;


 int * Alloc (int) ;
 int CP_ACP ;
 int INTRNL_ANY_WIZARD ;
 int IS_INTRESOURCE (int ) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int PROPSHEET_CollectSheetInfoCommon (TYPE_2__*,int) ;
 int PSH_USECALLBACK ;
 int PSH_USEPSTARTPAGE ;
 int TRACE (char*,...) ;
 int debugstr_a (int ) ;
 int memcpy (TYPE_4__*,TYPE_3__*,int) ;
 int min (int ,int) ;

__attribute__((used)) static void PROPSHEET_CollectSheetInfoA(LPCPROPSHEETHEADERA lppsh,
                                       PropSheetInfo * psInfo)
{
  DWORD dwSize = min(lppsh->dwSize,sizeof(PROPSHEETHEADERA));
  DWORD dwFlags = lppsh->dwFlags;

  psInfo->useCallback = (dwFlags & PSH_USECALLBACK )&& (lppsh->pfnCallback);

  memcpy(&psInfo->ppshheader,lppsh,dwSize);
  TRACE("\n** PROPSHEETHEADER **\ndwSize\t\t%d\ndwFlags\t\t%08x\nhwndParent\t%p\nhInstance\t%p\npszCaption\t'%s'\nnPages\t\t%d\npfnCallback\t%p\n",
 lppsh->dwSize, lppsh->dwFlags, lppsh->hwndParent, lppsh->hInstance,
 debugstr_a(lppsh->pszCaption), lppsh->nPages, lppsh->pfnCallback);

  if (lppsh->dwFlags & INTRNL_ANY_WIZARD)
     psInfo->ppshheader.pszCaption = ((void*)0);
  else
  {
     if (!IS_INTRESOURCE(lppsh->pszCaption))
     {
        int len = MultiByteToWideChar(CP_ACP, 0, lppsh->pszCaption, -1, ((void*)0), 0);
        WCHAR *caption = Alloc( len*sizeof (WCHAR) );

        MultiByteToWideChar(CP_ACP, 0, lppsh->pszCaption, -1, caption, len);
        psInfo->ppshheader.pszCaption = caption;
     }
  }
  psInfo->nPages = lppsh->nPages;

  if (dwFlags & PSH_USEPSTARTPAGE)
  {
    TRACE("PSH_USEPSTARTPAGE is on\n");
    psInfo->active_page = 0;
  }
  else
    psInfo->active_page = lppsh->u2.nStartPage;

  PROPSHEET_CollectSheetInfoCommon(psInfo, dwFlags);
}
