
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ xmlParserInputState ;
typedef TYPE_2__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_9__ {scalar_t__ instate; int disableSAX; scalar_t__ recovery; TYPE_1__* input; } ;
struct TYPE_8__ {int id; unsigned int consumed; scalar_t__ cur; scalar_t__ end; int line; scalar_t__ filename; } ;


 scalar_t__ CMP6 (int const*,char,char,char,char,char,char) ;
 scalar_t__ CMP7 (int const*,char,char,char,char,unsigned char,char,char) ;
 int const* CUR_PTR ;
 int GROW ;
 int NEXT ;
 char NXT (int) ;
 char RAW ;
 int SHRINK ;
 int SKIP (int) ;
 int SKIP_BLANKS ;
 int XML_ERR_CONDSEC_INVALID ;
 int XML_ERR_CONDSEC_INVALID_KEYWORD ;
 int XML_ERR_CONDSEC_NOT_FINISHED ;
 int XML_ERR_ENTITY_BOUNDARY ;
 int XML_ERR_EXT_SUBSET_NOT_FINISHED ;
 scalar_t__ XML_PARSER_EOF ;
 scalar_t__ XML_PARSER_IGNORE ;
 int xmlFatalErr (TYPE_2__*,int ,int *) ;
 int xmlFatalErrMsg (TYPE_2__*,int ,char*) ;
 int xmlGenericError (int ,char*,...) ;
 int xmlGenericErrorContext ;
 int xmlHaltParser (TYPE_2__*) ;
 int xmlParseMarkupDecl (TYPE_2__*) ;
 scalar_t__ xmlParserDebugEntities ;

__attribute__((used)) static void
xmlParseConditionalSections(xmlParserCtxtPtr ctxt) {
    int id = ctxt->input->id;

    SKIP(3);
    SKIP_BLANKS;
    if (CMP7(CUR_PTR, 'I', 'N', 'C', 'L', 'U', 'D', 'E')) {
 SKIP(7);
 SKIP_BLANKS;
 if (RAW != '[') {
     xmlFatalErr(ctxt, XML_ERR_CONDSEC_INVALID, ((void*)0));
     xmlHaltParser(ctxt);
     return;
 } else {
     if (ctxt->input->id != id) {
  xmlFatalErrMsg(ctxt, XML_ERR_ENTITY_BOUNDARY,
                        "All markup of the conditional section is not"
                               " in the same entity\n");
     }
     NEXT;
 }
 if (xmlParserDebugEntities) {
     if ((ctxt->input != ((void*)0)) && (ctxt->input->filename))
  xmlGenericError(xmlGenericErrorContext,
   "%s(%d): ", ctxt->input->filename,
   ctxt->input->line);
     xmlGenericError(xmlGenericErrorContext,
      "Entering INCLUDE Conditional Section\n");
 }

        SKIP_BLANKS;
        GROW;
 while (((RAW != 0) && ((RAW != ']') || (NXT(1) != ']') ||
         (NXT(2) != '>'))) && (ctxt->instate != XML_PARSER_EOF)) {
     const xmlChar *check = CUR_PTR;
     unsigned int cons = ctxt->input->consumed;

     if ((RAW == '<') && (NXT(1) == '!') && (NXT(2) == '[')) {
  xmlParseConditionalSections(ctxt);
     } else
  xmlParseMarkupDecl(ctxt);

            SKIP_BLANKS;
            GROW;

     if ((CUR_PTR == check) && (cons == ctxt->input->consumed)) {
  xmlFatalErr(ctxt, XML_ERR_EXT_SUBSET_NOT_FINISHED, ((void*)0));
  xmlHaltParser(ctxt);
  break;
     }
 }
 if (xmlParserDebugEntities) {
     if ((ctxt->input != ((void*)0)) && (ctxt->input->filename))
  xmlGenericError(xmlGenericErrorContext,
   "%s(%d): ", ctxt->input->filename,
   ctxt->input->line);
     xmlGenericError(xmlGenericErrorContext,
      "Leaving INCLUDE Conditional Section\n");
 }

    } else if (CMP6(CUR_PTR, 'I', 'G', 'N', 'O', 'R', 'E')) {
 int state;
 xmlParserInputState instate;
 int depth = 0;

 SKIP(6);
 SKIP_BLANKS;
 if (RAW != '[') {
     xmlFatalErr(ctxt, XML_ERR_CONDSEC_INVALID, ((void*)0));
     xmlHaltParser(ctxt);
     return;
 } else {
     if (ctxt->input->id != id) {
  xmlFatalErrMsg(ctxt, XML_ERR_ENTITY_BOUNDARY,
                        "All markup of the conditional section is not"
                               " in the same entity\n");
     }
     NEXT;
 }
 if (xmlParserDebugEntities) {
     if ((ctxt->input != ((void*)0)) && (ctxt->input->filename))
  xmlGenericError(xmlGenericErrorContext,
   "%s(%d): ", ctxt->input->filename,
   ctxt->input->line);
     xmlGenericError(xmlGenericErrorContext,
      "Entering IGNORE Conditional Section\n");
 }





 state = ctxt->disableSAX;
 instate = ctxt->instate;
 if (ctxt->recovery == 0) ctxt->disableSAX = 1;
 ctxt->instate = XML_PARSER_IGNORE;

 while (((depth >= 0) && (RAW != 0)) &&
               (ctxt->instate != XML_PARSER_EOF)) {
   if ((RAW == '<') && (NXT(1) == '!') && (NXT(2) == '[')) {
     depth++;
     SKIP(3);
     continue;
   }
   if ((RAW == ']') && (NXT(1) == ']') && (NXT(2) == '>')) {
     if (--depth >= 0) SKIP(3);
     continue;
   }
   NEXT;
   continue;
 }

 ctxt->disableSAX = state;
 ctxt->instate = instate;

 if (xmlParserDebugEntities) {
     if ((ctxt->input != ((void*)0)) && (ctxt->input->filename))
  xmlGenericError(xmlGenericErrorContext,
   "%s(%d): ", ctxt->input->filename,
   ctxt->input->line);
     xmlGenericError(xmlGenericErrorContext,
      "Leaving IGNORE Conditional Section\n");
 }

    } else {
 xmlFatalErr(ctxt, XML_ERR_CONDSEC_INVALID_KEYWORD, ((void*)0));
 xmlHaltParser(ctxt);
 return;
    }

    if (RAW == 0)
        SHRINK;

    if (RAW == 0) {
 xmlFatalErr(ctxt, XML_ERR_CONDSEC_NOT_FINISHED, ((void*)0));
    } else {
 if (ctxt->input->id != id) {
     xmlFatalErrMsg(ctxt, XML_ERR_ENTITY_BOUNDARY,
                    "All markup of the conditional section is not in"
                           " the same entity\n");
 }
 if ((ctxt-> instate != XML_PARSER_EOF) &&
     ((ctxt->input->cur + 3) <= ctxt->input->end))
     SKIP(3);
    }
}
