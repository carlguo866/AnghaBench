
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_22__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_16__ ;


typedef TYPE_3__* xsltTransformContextPtr ;
typedef TYPE_4__* xmlXPathParserContextPtr ;
typedef TYPE_5__* xmlXPathObjectPtr ;
typedef TYPE_6__* xmlNodePtr ;
typedef int xmlChar ;
typedef TYPE_7__* xmlAttrPtr ;
struct TYPE_37__ {TYPE_6__* parent; } ;
struct TYPE_36__ {scalar_t__ type; TYPE_22__* doc; } ;
struct TYPE_35__ {int * stringval; TYPE_16__* nodesetval; } ;
struct TYPE_34__ {void* error; TYPE_1__* value; } ;
struct TYPE_33__ {TYPE_2__* style; TYPE_6__* inst; } ;
struct TYPE_32__ {TYPE_22__* doc; } ;
struct TYPE_31__ {int URL; } ;
struct TYPE_30__ {scalar_t__ type; } ;
struct TYPE_29__ {int nodeNr; TYPE_6__** nodeTab; } ;


 scalar_t__ IS_XSLT_REAL_NODE (TYPE_6__*) ;
 scalar_t__ XML_ATTRIBUTE_NODE ;
 scalar_t__ XML_PI_NODE ;
 void* XPATH_INVALID_ARITY ;
 void* XPATH_INVALID_TYPE ;
 scalar_t__ XPATH_NODESET ;
 scalar_t__ XPATH_STRING ;
 TYPE_5__* valuePop (TYPE_4__*) ;
 int valuePush (TYPE_4__*,TYPE_5__*) ;
 int * xmlBuildURI (int *,int *) ;
 int xmlFree (int *) ;
 int * xmlNodeGetBase (TYPE_22__*,TYPE_6__*) ;
 scalar_t__ xmlStrEqual (int *,int ) ;
 int xmlXPathFreeObject (TYPE_5__*) ;
 TYPE_5__* xmlXPathNewNodeSet (TYPE_6__*) ;
 TYPE_16__* xmlXPathNodeSetMerge (TYPE_16__*,TYPE_16__*) ;
 TYPE_5__* xmlXPathObjectCopy (TYPE_5__*) ;
 int xmlXPathStringFunction (TYPE_4__*,int) ;
 int xsltDocumentFunctionLoadDocument (TYPE_4__*,int *) ;
 int xsltTransformError (TYPE_3__*,int *,int *,char*,...) ;
 TYPE_3__* xsltXPathGetTransformContext (TYPE_4__*) ;

void
xsltDocumentFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
    xmlXPathObjectPtr obj, obj2 = ((void*)0);
    xmlChar *base = ((void*)0), *URI;


    if ((nargs < 1) || (nargs > 2)) {
        xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
                         "document() : invalid number of args %d\n",
                         nargs);
        ctxt->error = XPATH_INVALID_ARITY;
        return;
    }
    if (ctxt->value == ((void*)0)) {
        xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
                         "document() : invalid arg value\n");
        ctxt->error = XPATH_INVALID_TYPE;
        return;
    }

    if (nargs == 2) {
        if (ctxt->value->type != XPATH_NODESET) {
            xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
                             "document() : invalid arg expecting a nodeset\n");
            ctxt->error = XPATH_INVALID_TYPE;
            return;
        }

        obj2 = valuePop(ctxt);
    }

    if (ctxt->value->type == XPATH_NODESET) {
        int i;
        xmlXPathObjectPtr newobj, ret;

        obj = valuePop(ctxt);
        ret = xmlXPathNewNodeSet(((void*)0));

        if ((obj != ((void*)0)) && obj->nodesetval) {
            for (i = 0; i < obj->nodesetval->nodeNr; i++) {
                valuePush(ctxt,
                          xmlXPathNewNodeSet(obj->nodesetval->nodeTab[i]));
                xmlXPathStringFunction(ctxt, 1);
                if (nargs == 2) {
                    valuePush(ctxt, xmlXPathObjectCopy(obj2));
                } else {
                    valuePush(ctxt,
                              xmlXPathNewNodeSet(obj->nodesetval->
                                                 nodeTab[i]));
                }
                xsltDocumentFunction(ctxt, 2);
                newobj = valuePop(ctxt);
                ret->nodesetval = xmlXPathNodeSetMerge(ret->nodesetval,
                                                       newobj->nodesetval);
                xmlXPathFreeObject(newobj);
            }
        }

        if (obj != ((void*)0))
            xmlXPathFreeObject(obj);
        if (obj2 != ((void*)0))
            xmlXPathFreeObject(obj2);
        valuePush(ctxt, ret);
        return;
    }



    xmlXPathStringFunction(ctxt, 1);
    if (ctxt->value->type != XPATH_STRING) {
        xsltTransformError(xsltXPathGetTransformContext(ctxt), ((void*)0), ((void*)0),
                         "document() : invalid arg expecting a string\n");
        ctxt->error = XPATH_INVALID_TYPE;
        if (obj2 != ((void*)0))
            xmlXPathFreeObject(obj2);
        return;
    }
    obj = valuePop(ctxt);
    if (obj->stringval == ((void*)0)) {
        valuePush(ctxt, xmlXPathNewNodeSet(((void*)0)));
    } else {
        xsltTransformContextPtr tctxt;
        tctxt = xsltXPathGetTransformContext(ctxt);
        if ((obj2 != ((void*)0)) && (obj2->nodesetval != ((void*)0)) &&
            (obj2->nodesetval->nodeNr > 0) &&
            IS_XSLT_REAL_NODE(obj2->nodesetval->nodeTab[0])) {
            xmlNodePtr target;

            target = obj2->nodesetval->nodeTab[0];
            if ((target->type == XML_ATTRIBUTE_NODE) ||
         (target->type == XML_PI_NODE)) {
                target = ((xmlAttrPtr) target)->parent;
            }
            base = xmlNodeGetBase(target->doc, target);
        } else {
            if ((tctxt != ((void*)0)) && (tctxt->inst != ((void*)0))) {
                base = xmlNodeGetBase(tctxt->inst->doc, tctxt->inst);
            } else if ((tctxt != ((void*)0)) && (tctxt->style != ((void*)0)) &&
                       (tctxt->style->doc != ((void*)0))) {
                base = xmlNodeGetBase(tctxt->style->doc,
                                      (xmlNodePtr) tctxt->style->doc);
            }
        }
        URI = xmlBuildURI(obj->stringval, base);
        if (base != ((void*)0))
            xmlFree(base);
        if (URI == ((void*)0)) {
            if ((tctxt != ((void*)0)) && (tctxt->style != ((void*)0)) &&
                (tctxt->style->doc != ((void*)0)) &&
                (xmlStrEqual(URI, tctxt->style->doc->URL))) {

                valuePush(ctxt, xmlXPathNewNodeSet((xmlNodePtr) tctxt->style->doc));
            } else {
                valuePush(ctxt, xmlXPathNewNodeSet(((void*)0)));
            }
        } else {
     xsltDocumentFunctionLoadDocument( ctxt, URI );
     xmlFree(URI);
 }
    }
    xmlXPathFreeObject(obj);
    if (obj2 != ((void*)0))
        xmlXPathFreeObject(obj2);
}
