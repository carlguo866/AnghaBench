
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_7__ {int mail_doc; TYPE_1__ base; } ;
typedef TYPE_2__ pdf_mail_doc_event_internal ;
typedef int pdf_mail_doc_event ;
struct TYPE_8__ {int event_cb_data; int (* event_cb ) (int *,TYPE_3__*,int *,int ) ;} ;
typedef TYPE_3__ pdf_document ;
typedef int pdf_doc_event ;
typedef int fz_context ;


 int PDF_DOCUMENT_EVENT_MAIL_DOC ;
 int stub1 (int *,TYPE_3__*,int *,int ) ;

void pdf_event_issue_mail_doc(fz_context *ctx, pdf_document *doc, pdf_mail_doc_event *event)
{
 if (doc->event_cb)
 {
  pdf_mail_doc_event_internal e;

  e.base.type = PDF_DOCUMENT_EVENT_MAIL_DOC;
  e.mail_doc = *event;

  doc->event_cb(ctx, doc, (pdf_doc_event *)&e, doc->event_cb_data);
 }
}
