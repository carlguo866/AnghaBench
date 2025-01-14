
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_10__ {scalar_t__ append_protocol; scalar_t__ append_method; scalar_t__ serve_usecs; scalar_t__ bandwidth; scalar_t__ no_column_names; } ;
struct TYPE_7__ {int hits_len; int method_len; scalar_t__ bw_len; scalar_t__ visitors_perc_len; scalar_t__ visitors_len; scalar_t__ hits_perc_len; } ;
struct TYPE_9__ {scalar_t__ idx_data; TYPE_1__ meta; int module; } ;
struct TYPE_8__ {scalar_t__ data; scalar_t__ protocol; scalar_t__ method; scalar_t__ maxts; scalar_t__ cumts; scalar_t__ avgts; scalar_t__ bw; scalar_t__ percent; scalar_t__ visitors; scalar_t__ hits; } ;
typedef TYPE_2__ GOutput ;
typedef int GModule ;
typedef TYPE_3__ GDashModule ;


 scalar_t__ DASH_SRV_TM_LEN ;
 int MTRC_AVGTS_LBL ;
 int MTRC_BW_LBL ;
 int MTRC_CUMTS_LBL ;
 int MTRC_DATA_LBL ;
 int MTRC_HITS_LBL ;
 int MTRC_HITS_PERC_LBL ;
 int MTRC_MAXTS_LBL ;
 int MTRC_METHODS_SHORT_LBL ;
 int MTRC_PROTOCOLS_SHORT_LBL ;
 int MTRC_VISITORS_PERC_LBL ;
 int MTRC_VISITORS_SHORT_LBL ;
 TYPE_6__ conf ;
 int get_xpos () ;
 int lprint_col (int *,int,int*,int,char*,int ) ;
 TYPE_2__* output_lookup (int ) ;
 int rprint_col (int *,int,int*,scalar_t__,char*,int ) ;

__attribute__((used)) static void
render_cols (WINDOW * win, GDashModule * data, int *y)
{
  GModule module = data->module;
  const GOutput *output = output_lookup (module);
  int x = get_xpos ();

  if (data->idx_data == 0 || conf.no_column_names)
    return;

  if (output->hits)
    lprint_col (win, *y, &x, data->meta.hits_len, "%s", MTRC_HITS_LBL);

  if (output->percent)
    rprint_col (win, *y, &x, data->meta.hits_perc_len + 4, "%*s",
                MTRC_HITS_PERC_LBL);

  if (output->visitors)
    rprint_col (win, *y, &x, data->meta.visitors_len, "%*s",
                MTRC_VISITORS_SHORT_LBL);

  if (output->percent)
    rprint_col (win, *y, &x, data->meta.visitors_perc_len + 4, "%*s",
                MTRC_VISITORS_PERC_LBL);

  if (output->bw && conf.bandwidth)
    rprint_col (win, *y, &x, data->meta.bw_len, "%*s", MTRC_BW_LBL);

  if (output->avgts && conf.serve_usecs)
    rprint_col (win, *y, &x, DASH_SRV_TM_LEN, "%*s", MTRC_AVGTS_LBL);

  if (output->cumts && conf.serve_usecs)
    rprint_col (win, *y, &x, DASH_SRV_TM_LEN, "%*s", MTRC_CUMTS_LBL);

  if (output->maxts && conf.serve_usecs)
    rprint_col (win, *y, &x, DASH_SRV_TM_LEN, "%*s", MTRC_MAXTS_LBL);

  if (output->method && conf.append_method)
    lprint_col (win, *y, &x, data->meta.method_len, "%s",
                MTRC_METHODS_SHORT_LBL);

  if (output->protocol && conf.append_protocol)
    lprint_col (win, *y, &x, 8, "%s", MTRC_PROTOCOLS_SHORT_LBL);

  if (output->data)
    lprint_col (win, *y, &x, 4, "%s", MTRC_DATA_LBL);
}
