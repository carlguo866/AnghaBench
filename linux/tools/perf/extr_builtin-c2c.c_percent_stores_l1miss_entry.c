
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {int dummy; } ;
struct perf_hpp {int size; int buf; } ;
struct hist_entry {int hists; } ;


 double PERCENT (struct hist_entry*,int ) ;
 int PERC_STR (char*,double) ;
 int c2c_width (struct perf_hpp_fmt*,struct perf_hpp*,int ) ;
 int scnprintf (int ,int ,char*,int,int ) ;
 int st_l1miss ;

__attribute__((used)) static int
percent_stores_l1miss_entry(struct perf_hpp_fmt *fmt, struct perf_hpp *hpp,
      struct hist_entry *he)
{
 int width = c2c_width(fmt, hpp, he->hists);
 double per = PERCENT(he, st_l1miss);
 char buf[10];

 return scnprintf(hpp->buf, hpp->size, "%*s", width, PERC_STR(buf, per));
}
