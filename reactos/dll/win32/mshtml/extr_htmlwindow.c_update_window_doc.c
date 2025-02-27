
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int nsresult ;
typedef int nsIDOMHTMLDocument ;
typedef int nsIDOMDocument ;
typedef int nsAString ;
struct TYPE_14__ {TYPE_10__* doc_node; TYPE_4__* window; } ;
struct TYPE_17__ {scalar_t__ usermode; TYPE_3__ basedoc; } ;
struct TYPE_12__ {TYPE_4__* outer_window; } ;
struct TYPE_16__ {TYPE_10__* doc; TYPE_1__ base; } ;
struct TYPE_13__ {TYPE_5__* inner_window; } ;
struct TYPE_15__ {TYPE_8__* doc_obj; TYPE_5__* pending_window; TYPE_2__ base; int nswindow; } ;
struct TYPE_11__ {int basedoc; int nsdoc; } ;
typedef char PRUnichar ;
typedef TYPE_4__ HTMLOuterWindow ;
typedef TYPE_5__ HTMLInnerWindow ;
typedef int HRESULT ;


 scalar_t__ EDITMODE ;
 int ERR (char*,...) ;
 int E_FAIL ;
 int E_UNEXPECTED ;
 scalar_t__ FAILED (int ) ;
 int IID_nsIDOMHTMLDocument ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int assert (int) ;
 int create_doc_from_nsdoc (int *,TYPE_8__*,TYPE_5__*,TYPE_10__**) ;
 int detach_inner_window (TYPE_5__*) ;
 int htmldoc_addref (int *) ;
 int htmldoc_release (int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,char const*) ;
 int nsIDOMDocument_QueryInterface (int *,int *,void**) ;
 int nsIDOMDocument_Release (int *) ;
 int nsIDOMHTMLDocument_Release (int *) ;
 int nsIDOMHTMLDocument_SetDesignMode (int ,int *) ;
 int nsIDOMWindow_GetDocument (int ,int **) ;

HRESULT update_window_doc(HTMLInnerWindow *window)
{
    HTMLOuterWindow *outer_window = window->base.outer_window;
    nsIDOMHTMLDocument *nshtmldoc;
    nsIDOMDocument *nsdoc;
    nsresult nsres;
    HRESULT hres;

    assert(!window->doc);

    if(!outer_window) {
        ERR("NULL outer window\n");
        return E_UNEXPECTED;
    }

    nsres = nsIDOMWindow_GetDocument(outer_window->nswindow, &nsdoc);
    if(NS_FAILED(nsres) || !nsdoc) {
        ERR("GetDocument failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsres = nsIDOMDocument_QueryInterface(nsdoc, &IID_nsIDOMHTMLDocument, (void**)&nshtmldoc);
    nsIDOMDocument_Release(nsdoc);
    if(NS_FAILED(nsres)) {
        ERR("Could not get nsIDOMHTMLDocument iface: %08x\n", nsres);
        return E_FAIL;
    }

    hres = create_doc_from_nsdoc(nshtmldoc, outer_window->doc_obj, window, &window->doc);
    nsIDOMHTMLDocument_Release(nshtmldoc);
    if(FAILED(hres))
        return hres;

    if(outer_window->doc_obj->usermode == EDITMODE) {
        nsAString mode_str;
        nsresult nsres;

        static const PRUnichar onW[] = {'o','n',0};

        nsAString_InitDepend(&mode_str, onW);
        nsres = nsIDOMHTMLDocument_SetDesignMode(window->doc->nsdoc, &mode_str);
        nsAString_Finish(&mode_str);
        if(NS_FAILED(nsres))
            ERR("SetDesignMode failed: %08x\n", nsres);
    }

    if(window != outer_window->pending_window) {
        ERR("not current pending window\n");
        return S_OK;
    }

    if(outer_window->base.inner_window)
        detach_inner_window(outer_window->base.inner_window);
    outer_window->base.inner_window = window;
    outer_window->pending_window = ((void*)0);

    if(outer_window->doc_obj->basedoc.window == outer_window || !outer_window->doc_obj->basedoc.window) {
        if(outer_window->doc_obj->basedoc.doc_node)
            htmldoc_release(&outer_window->doc_obj->basedoc.doc_node->basedoc);
        outer_window->doc_obj->basedoc.doc_node = window->doc;
        htmldoc_addref(&window->doc->basedoc);
    }

    return hres;
}
