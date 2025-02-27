
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_query_bpf {int ids_len; scalar_t__ prog_cnt; scalar_t__* ids; } ;
struct perf_event_attr {int sample_type; int sample_period; int wakeup_events; int type; int config; } ;
struct bpf_prog_info {scalar_t__ id; scalar_t__ nr_map_ids; scalar_t__ xlated_prog_len; scalar_t__ jited_prog_len; } ;
struct bpf_object {int dummy; } ;
typedef int prog_info ;
typedef int buf ;
typedef scalar_t__ __u32 ;


 int BPF_PROG_TYPE_TRACEPOINT ;
 scalar_t__ CHECK (int,char*,char*,int,scalar_t__,...) ;
 scalar_t__ EFAULT ;
 scalar_t__ ENOSPC ;
 int O_RDONLY ;
 int PERF_EVENT_IOC_DISABLE ;
 int PERF_EVENT_IOC_ENABLE ;
 int PERF_EVENT_IOC_QUERY_BPF ;
 int PERF_EVENT_IOC_SET_BPF ;
 int PERF_SAMPLE_CALLCHAIN ;
 int PERF_SAMPLE_RAW ;
 int PERF_TYPE_TRACEPOINT ;
 int __NR_perf_event_open ;
 int bpf_obj_get_info_by_fd (int,struct bpf_prog_info*,scalar_t__*) ;
 int bpf_object__close (struct bpf_object*) ;
 int bpf_prog_load (char const*,int ,struct bpf_object**,int*) ;
 int bzero (struct bpf_prog_info*,int) ;
 int close (int) ;
 scalar_t__ errno ;
 int free (struct perf_event_query_bpf*) ;
 int ioctl (int,int ,...) ;
 struct perf_event_query_bpf* malloc (int) ;
 int open (char*,int ,int ) ;
 int read (int,char*,int) ;
 int snprintf (char*,int,char*) ;
 int strtol (char*,int *,int ) ;
 int syscall (int ,struct perf_event_attr*,int,int ,int,int ) ;

void test_tp_attach_query(void)
{
 const int num_progs = 3;
 int i, j, bytes, efd, err, prog_fd[num_progs], pmu_fd[num_progs];
 __u32 duration = 0, info_len, saved_prog_ids[num_progs];
 const char *file = "./test_tracepoint.o";
 struct perf_event_query_bpf *query;
 struct perf_event_attr attr = {};
 struct bpf_object *obj[num_progs];
 struct bpf_prog_info prog_info;
 char buf[256];

 for (i = 0; i < num_progs; i++)
  obj[i] = ((void*)0);

 snprintf(buf, sizeof(buf),
   "/sys/kernel/debug/tracing/events/sched/sched_switch/id");
 efd = open(buf, O_RDONLY, 0);
 if (CHECK(efd < 0, "open", "err %d errno %d\n", efd, errno))
  return;
 bytes = read(efd, buf, sizeof(buf));
 close(efd);
 if (CHECK(bytes <= 0 || bytes >= sizeof(buf),
    "read", "bytes %d errno %d\n", bytes, errno))
  return;

 attr.config = strtol(buf, ((void*)0), 0);
 attr.type = PERF_TYPE_TRACEPOINT;
 attr.sample_type = PERF_SAMPLE_RAW | PERF_SAMPLE_CALLCHAIN;
 attr.sample_period = 1;
 attr.wakeup_events = 1;

 query = malloc(sizeof(*query) + sizeof(__u32) * num_progs);
 for (i = 0; i < num_progs; i++) {
  err = bpf_prog_load(file, BPF_PROG_TYPE_TRACEPOINT, &obj[i],
        &prog_fd[i]);
  if (CHECK(err, "prog_load", "err %d errno %d\n", err, errno))
   goto cleanup1;

  bzero(&prog_info, sizeof(prog_info));
  prog_info.jited_prog_len = 0;
  prog_info.xlated_prog_len = 0;
  prog_info.nr_map_ids = 0;
  info_len = sizeof(prog_info);
  err = bpf_obj_get_info_by_fd(prog_fd[i], &prog_info, &info_len);
  if (CHECK(err, "bpf_obj_get_info_by_fd", "err %d errno %d\n",
     err, errno))
   goto cleanup1;
  saved_prog_ids[i] = prog_info.id;

  pmu_fd[i] = syscall(__NR_perf_event_open, &attr, -1 ,
        0 , -1 ,
        0 );
  if (CHECK(pmu_fd[i] < 0, "perf_event_open", "err %d errno %d\n",
     pmu_fd[i], errno))
   goto cleanup2;
  err = ioctl(pmu_fd[i], PERF_EVENT_IOC_ENABLE, 0);
  if (CHECK(err, "perf_event_ioc_enable", "err %d errno %d\n",
     err, errno))
   goto cleanup3;

  if (i == 0) {

   query->ids_len = num_progs;
   err = ioctl(pmu_fd[i], PERF_EVENT_IOC_QUERY_BPF, query);
   if (CHECK(err || query->prog_cnt != 0,
      "perf_event_ioc_query_bpf",
      "err %d errno %d query->prog_cnt %u\n",
      err, errno, query->prog_cnt))
    goto cleanup3;
  }

  err = ioctl(pmu_fd[i], PERF_EVENT_IOC_SET_BPF, prog_fd[i]);
  if (CHECK(err, "perf_event_ioc_set_bpf", "err %d errno %d\n",
     err, errno))
   goto cleanup3;

  if (i == 1) {

   query->ids_len = 0;
   err = ioctl(pmu_fd[i], PERF_EVENT_IOC_QUERY_BPF, query);
   if (CHECK(err || query->prog_cnt != 2,
      "perf_event_ioc_query_bpf",
      "err %d errno %d query->prog_cnt %u\n",
      err, errno, query->prog_cnt))
    goto cleanup3;



   err = ioctl(pmu_fd[i], PERF_EVENT_IOC_QUERY_BPF,
        (struct perf_event_query_bpf *)0x1);
   if (CHECK(!err || errno != EFAULT,
      "perf_event_ioc_query_bpf",
      "err %d errno %d\n", err, errno))
    goto cleanup3;


   query->ids_len = 1;
   err = ioctl(pmu_fd[i], PERF_EVENT_IOC_QUERY_BPF, query);
   if (CHECK(!err || errno != ENOSPC || query->prog_cnt != 2,
      "perf_event_ioc_query_bpf",
      "err %d errno %d query->prog_cnt %u\n",
      err, errno, query->prog_cnt))
    goto cleanup3;
  }

  query->ids_len = num_progs;
  err = ioctl(pmu_fd[i], PERF_EVENT_IOC_QUERY_BPF, query);
  if (CHECK(err || query->prog_cnt != (i + 1),
     "perf_event_ioc_query_bpf",
     "err %d errno %d query->prog_cnt %u\n",
     err, errno, query->prog_cnt))
   goto cleanup3;
  for (j = 0; j < i + 1; j++)
   if (CHECK(saved_prog_ids[j] != query->ids[j],
      "perf_event_ioc_query_bpf",
      "#%d saved_prog_id %x query prog_id %x\n",
      j, saved_prog_ids[j], query->ids[j]))
    goto cleanup3;
 }

 i = num_progs - 1;
 for (; i >= 0; i--) {
 cleanup3:
  ioctl(pmu_fd[i], PERF_EVENT_IOC_DISABLE);
 cleanup2:
  close(pmu_fd[i]);
 cleanup1:
  bpf_object__close(obj[i]);
 }
 free(query);
}
