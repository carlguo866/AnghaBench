
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int xsltParserContextPtr ;
typedef scalar_t__ xsltOp ;
typedef TYPE_2__* xsltCompMatchPtr ;
typedef int xmlXPathCompExprPtr ;
typedef char xmlChar ;
struct TYPE_6__ {int nbStep; int direct; char* pattern; TYPE_1__* steps; } ;
struct TYPE_5__ {char* value; char* value2; char* value3; scalar_t__ op; int previousExtra; int indexExtra; int lenExtra; int comp; } ;


 scalar_t__ XSLT_OP_ALL ;
 scalar_t__ XSLT_OP_ELEM ;
 int XSLT_OP_END ;
 scalar_t__ XSLT_OP_PREDICATE ;
 int xmlFree (char*) ;
 char* xmlStrcat (char*,char*) ;
 char* xmlStrdup (char const*) ;
 int xsltCompMatchAdd (int ,TYPE_2__*,int ,int *,int *,int ) ;

__attribute__((used)) static void
xsltReverseCompMatch(xsltParserContextPtr ctxt, xsltCompMatchPtr comp) {
    int i = 0;
    int j = comp->nbStep - 1;

    while (j > i) {
 register xmlChar *tmp;
 register xsltOp op;
 register xmlXPathCompExprPtr expr;
 register int t;

 tmp = comp->steps[i].value;
 comp->steps[i].value = comp->steps[j].value;
 comp->steps[j].value = tmp;
 tmp = comp->steps[i].value2;
 comp->steps[i].value2 = comp->steps[j].value2;
 comp->steps[j].value2 = tmp;
 tmp = comp->steps[i].value3;
 comp->steps[i].value3 = comp->steps[j].value3;
 comp->steps[j].value3 = tmp;
 op = comp->steps[i].op;
 comp->steps[i].op = comp->steps[j].op;
 comp->steps[j].op = op;
 expr = comp->steps[i].comp;
 comp->steps[i].comp = comp->steps[j].comp;
 comp->steps[j].comp = expr;
 t = comp->steps[i].previousExtra;
 comp->steps[i].previousExtra = comp->steps[j].previousExtra;
 comp->steps[j].previousExtra = t;
 t = comp->steps[i].indexExtra;
 comp->steps[i].indexExtra = comp->steps[j].indexExtra;
 comp->steps[j].indexExtra = t;
 t = comp->steps[i].lenExtra;
 comp->steps[i].lenExtra = comp->steps[j].lenExtra;
 comp->steps[j].lenExtra = t;
 j--;
 i++;
    }
    xsltCompMatchAdd(ctxt, comp, XSLT_OP_END, ((void*)0), ((void*)0), 0);





    for (i = 0;i < comp->nbStep - 1;i++) {
        xsltOp op = comp->steps[i].op;

        if ((op != XSLT_OP_ELEM) &&
            (op != XSLT_OP_ALL) &&
     (comp->steps[i + 1].op == XSLT_OP_PREDICATE)) {

     comp->direct = 1;
     if (comp->pattern[0] != '/') {
  xmlChar *query;

  query = xmlStrdup((const xmlChar *)"//");
  query = xmlStrcat(query, comp->pattern);

  xmlFree((xmlChar *) comp->pattern);
  comp->pattern = query;
     }
     break;
 }
    }
}
