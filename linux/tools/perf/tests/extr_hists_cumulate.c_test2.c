
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct result {int member_0; int member_1; char* member_2; char* member_3; char* member_4; } ;
struct machine {int dummy; } ;
struct hists {int dummy; } ;
struct evsel {int dummy; } ;
struct callchain_result {int member_0; int member_1; char* member_2; char* member_3; char* member_4; } ;
struct TYPE_14__ {int use_callchain; int cumulate_callchain; } ;
struct TYPE_13__ {char* member_0; char* member_1; } ;
struct TYPE_12__ {char* member_0; char* member_1; } ;
struct TYPE_11__ {char* member_0; char* member_1; } ;
struct TYPE_10__ {char* member_0; char* member_1; } ;
struct TYPE_9__ {char* member_0; char* member_1; } ;
struct TYPE_8__ {char* member_0; char* member_1; } ;


 int ARRAY_SIZE (struct result*) ;
 int CALLCHAIN ;
 int add_hist_entries (struct hists*,struct machine*) ;
 int callchain_param ;
 int callchain_register_param (int *) ;
 int del_hist_entries (struct hists*) ;
 int do_test (struct hists*,struct result*,int ,struct result*,int ) ;
 struct hists* evsel__hists (struct evsel*) ;
 int perf_evsel__set_sample_bit (struct evsel*,int ) ;
 int reset_output_field () ;
 int setup_sorting (int *) ;
 TYPE_7__ symbol_conf ;

__attribute__((used)) static int test2(struct evsel *evsel, struct machine *machine)
{
 int err;
 struct hists *hists = evsel__hists(evsel);
 struct result expected[] = {
  { 0, 2000, "perf", "perf", "main" },
  { 0, 1000, "bash", "[kernel]", "page_fault" },
  { 0, 1000, "bash", "bash", "main" },
  { 0, 1000, "bash", "bash", "xmalloc" },
  { 0, 1000, "perf", "[kernel]", "page_fault" },
  { 0, 1000, "perf", "[kernel]", "schedule" },
  { 0, 1000, "perf", "libc", "free" },
  { 0, 1000, "perf", "libc", "malloc" },
  { 0, 1000, "perf", "perf", "cmd_record" },
 };
 struct callchain_result expected_callchain[] = {
  {
   1, { { "perf", "main" }, },
  },
  {
   3, { { "[kernel]", "page_fault" },
    { "libc", "malloc" },
    { "bash", "main" }, },
  },
  {
   1, { { "bash", "main" }, },
  },
  {
   6, { { "bash", "xmalloc" },
    { "libc", "malloc" },
    { "bash", "xmalloc" },
    { "libc", "malloc" },
    { "bash", "xmalloc" },
    { "bash", "main" }, },
  },
  {
   4, { { "[kernel]", "page_fault" },
    { "[kernel]", "sys_perf_event_open" },
    { "perf", "run_command" },
    { "perf", "main" }, },
  },
  {
   3, { { "[kernel]", "schedule" },
    { "perf", "run_command" },
    { "perf", "main" }, },
  },
  {
   4, { { "libc", "free" },
    { "perf", "cmd_record" },
    { "perf", "run_command" },
    { "perf", "main" }, },
  },
  {
   4, { { "libc", "malloc" },
    { "perf", "cmd_record" },
    { "perf", "run_command" },
    { "perf", "main" }, },
  },
  {
   3, { { "perf", "cmd_record" },
    { "perf", "run_command" },
    { "perf", "main" }, },
  },
 };

 symbol_conf.use_callchain = 1;
 symbol_conf.cumulate_callchain = 0;
 perf_evsel__set_sample_bit(evsel, CALLCHAIN);

 setup_sorting(((void*)0));
 callchain_register_param(&callchain_param);

 err = add_hist_entries(hists, machine);
 if (err < 0)
  goto out;

 err = do_test(hists, expected, ARRAY_SIZE(expected),
        expected_callchain, ARRAY_SIZE(expected_callchain));

out:
 del_hist_entries(hists);
 reset_output_field();
 return err;
}
