
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ append_protocol; scalar_t__ append_method; scalar_t__ serve_usecs; scalar_t__ bandwidth; } ;
struct TYPE_11__ {scalar_t__ nts; } ;
struct TYPE_10__ {scalar_t__ nts; } ;
struct TYPE_9__ {scalar_t__ nts; } ;
struct TYPE_8__ {scalar_t__ nbw; } ;
struct TYPE_12__ {int hits; double hits_perc; int visitors; double visitors_perc; double bw_perc; char* method; char* protocol; int data; TYPE_4__ maxts; TYPE_3__ cumts; TYPE_2__ avgts; TYPE_1__ bw; } ;
typedef TYPE_5__ GMetrics ;
typedef int FILE ;


 TYPE_7__ conf ;
 int escape_cvs_output (int *,int ) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
print_csv_metric_block (FILE * fp, GMetrics * nmetrics)
{

  fprintf (fp, "\"%d\",", nmetrics->hits);
  fprintf (fp, "\"%4.2f%%\",", nmetrics->hits_perc);
  fprintf (fp, "\"%d\",", nmetrics->visitors);
  fprintf (fp, "\"%4.2f%%\",", nmetrics->visitors_perc);


  if (conf.bandwidth) {
    fprintf (fp, "\"%lld\",", (long long) nmetrics->bw.nbw);
    fprintf (fp, "\"%4.2f%%\",", nmetrics->bw_perc);
  }


  if (conf.serve_usecs) {
    fprintf (fp, "\"%lld\",", (long long) nmetrics->avgts.nts);
    fprintf (fp, "\"%lld\",", (long long) nmetrics->cumts.nts);
    fprintf (fp, "\"%lld\",", (long long) nmetrics->maxts.nts);
  }


  if (conf.append_method && nmetrics->method)
    fprintf (fp, "\"%s\"", nmetrics->method);
  fprintf (fp, ",");


  if (conf.append_protocol && nmetrics->protocol)
    fprintf (fp, "\"%s\"", nmetrics->protocol);
  fprintf (fp, ",");


  fprintf (fp, "\"");
  escape_cvs_output (fp, nmetrics->data);
  fprintf (fp, "\"\r\n");
}
