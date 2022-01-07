
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int sample_period; int wakeup_events; int sample_type; int type; int config; } ;
struct bpf_object {int dummy; } ;
typedef int buf ;
typedef int __u64 ;
typedef int __u32 ;


 int BPF_FD_TYPE_TRACEPOINT ;
 int BPF_PROG_TYPE_TRACEPOINT ;
 scalar_t__ CHECK (int,char*,char*,int,char*) ;
 int O_RDONLY ;
 int PERF_EVENT_IOC_ENABLE ;
 int PERF_EVENT_IOC_SET_BPF ;
 int PERF_SAMPLE_RAW ;
 int PERF_TYPE_TRACEPOINT ;
 int __NR_perf_event_open ;
 int bpf_object__close (struct bpf_object*) ;
 int bpf_prog_load (char const*,int ,struct bpf_object**,int*) ;
 int bpf_task_fd_query (int ,int,int ,char*,int*,int*,int*,int *,int *) ;
 int close (int) ;
 char* errno ;
 int getpid () ;
 int ioctl (int,int ,int) ;
 int open (char*,int ,int ) ;
 int read (int,char*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 int strcmp (char*,char const*) ;
 int strtol (char*,int *,int ) ;
 int syscall (int ,struct perf_event_attr*,int,int ,int,int ) ;

__attribute__((used)) static void test_task_fd_query_tp_core(const char *probe_name,
           const char *tp_name)
{
 const char *file = "./test_tracepoint.o";
 int err, bytes, efd, prog_fd, pmu_fd;
 struct perf_event_attr attr = {};
 __u64 probe_offset, probe_addr;
 __u32 len, prog_id, fd_type;
 struct bpf_object *obj = ((void*)0);
 __u32 duration = 0;
 char buf[256];

 err = bpf_prog_load(file, BPF_PROG_TYPE_TRACEPOINT, &obj, &prog_fd);
 if (CHECK(err, "bpf_prog_load", "err %d errno %d\n", err, errno))
  goto close_prog;

 snprintf(buf, sizeof(buf),
   "/sys/kernel/debug/tracing/events/%s/id", probe_name);
 efd = open(buf, O_RDONLY, 0);
 if (CHECK(efd < 0, "open", "err %d errno %d\n", efd, errno))
  goto close_prog;
 bytes = read(efd, buf, sizeof(buf));
 close(efd);
 if (CHECK(bytes <= 0 || bytes >= sizeof(buf), "read",
    "bytes %d errno %d\n", bytes, errno))
  goto close_prog;

 attr.config = strtol(buf, ((void*)0), 0);
 attr.type = PERF_TYPE_TRACEPOINT;
 attr.sample_type = PERF_SAMPLE_RAW;
 attr.sample_period = 1;
 attr.wakeup_events = 1;
 pmu_fd = syscall(__NR_perf_event_open, &attr, -1 ,
    0 , -1 ,
    0 );
 if (CHECK(err, "perf_event_open", "err %d errno %d\n", err, errno))
  goto close_pmu;

 err = ioctl(pmu_fd, PERF_EVENT_IOC_ENABLE, 0);
 if (CHECK(err, "perf_event_ioc_enable", "err %d errno %d\n", err,
    errno))
  goto close_pmu;

 err = ioctl(pmu_fd, PERF_EVENT_IOC_SET_BPF, prog_fd);
 if (CHECK(err, "perf_event_ioc_set_bpf", "err %d errno %d\n", err,
    errno))
  goto close_pmu;


 len = sizeof(buf);
 err = bpf_task_fd_query(getpid(), pmu_fd, 0, buf, &len, &prog_id,
    &fd_type, &probe_offset, &probe_addr);
 if (CHECK(err < 0, "bpf_task_fd_query", "err %d errno %d\n", err,
    errno))
  goto close_pmu;

 err = (fd_type == BPF_FD_TYPE_TRACEPOINT) && !strcmp(buf, tp_name);
 if (CHECK(!err, "check_results", "fd_type %d tp_name %s\n",
    fd_type, buf))
  goto close_pmu;

close_pmu:
 close(pmu_fd);
close_prog:
 bpf_object__close(obj);
}
