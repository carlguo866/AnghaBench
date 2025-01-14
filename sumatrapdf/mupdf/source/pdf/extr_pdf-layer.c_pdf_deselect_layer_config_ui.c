
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ button_flags; size_t ocg; scalar_t__ locked; } ;
typedef TYPE_3__ pdf_ocg_ui ;
struct TYPE_9__ {TYPE_2__* ocg; } ;
typedef TYPE_4__ pdf_document ;
typedef int fz_context ;
struct TYPE_7__ {int num_ui_entries; TYPE_1__* ocgs; TYPE_3__* ui; } ;
struct TYPE_6__ {scalar_t__ state; } ;


 int FZ_ERROR_GENERIC ;
 scalar_t__ PDF_LAYER_UI_CHECKBOX ;
 scalar_t__ PDF_LAYER_UI_RADIOBOX ;
 int fz_throw (int *,int ,char*) ;

void pdf_deselect_layer_config_ui(fz_context *ctx, pdf_document *doc, int ui)
{
 pdf_ocg_ui *entry;

 if (doc == ((void*)0) || doc->ocg == ((void*)0))
  return;

 if (ui < 0 || ui >= doc->ocg->num_ui_entries)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Out of range UI entry deselected");

 entry = &doc->ocg->ui[ui];
 if (entry->button_flags != PDF_LAYER_UI_RADIOBOX &&
  entry->button_flags != PDF_LAYER_UI_CHECKBOX)
  return;
 if (entry->locked)
  return;

 doc->ocg->ocgs[entry->ocg].state = 0;
}
