
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {long tv_sec; long tv_usec; } ;
struct TYPE_12__ {scalar_t__ mode; scalar_t__ size; int num; scalar_t__ pos; TYPE_1__ tv; int name; } ;
struct TYPE_11__ {int name; int pid; } ;
struct TYPE_10__ {scalar_t__ hsize; int * hbegin; int * hend; TYPE_4__ fd; TYPE_3__ pid; } ;
typedef TYPE_2__ result_t ;
typedef TYPE_3__ pidinfo_t ;
typedef scalar_t__ off_t ;
typedef TYPE_4__ fdinfo_t ;


 int MAX_FD_PER_PID ;
 int MAX_PIDS ;
 int MAX_RESULTS ;
 scalar_t__ PM_READ ;
 scalar_t__ PM_READWRITE ;
 scalar_t__ PM_WRITE ;
 scalar_t__ add_to_hlist (int **,int **,scalar_t__,scalar_t__) ;
 int clear () ;
 int copy_and_clean_results (TYPE_2__*,int,int) ;
 int find_fd_for_pid (int ,int*,int) ;
 scalar_t__ find_pid_by_id (int ,TYPE_3__*) ;
 scalar_t__ find_pids_by_binary_name (int ,TYPE_3__*,int) ;
 scalar_t__ flag_monitor ;
 scalar_t__ flag_monitor_continuous ;
 scalar_t__ flag_open_mode ;
 scalar_t__ flag_quiet ;
 scalar_t__ flag_throughput ;
 int format_size (scalar_t__,char*) ;
 char get_fdinfo (int ,int,TYPE_4__*) ;
 scalar_t__ get_hlist_average (int *,scalar_t__) ;
 int nfprintf (int ,char*,...) ;
 int nprintf (char*,...) ;
 int print_eta (scalar_t__) ;
 int * proc_names ;
 int proc_names_cnt ;
 int * proc_specifiq_name ;
 int proc_specifiq_name_cnt ;
 int * proc_specifiq_pid ;
 int proc_specifiq_pid_cnt ;
 int refresh () ;
 int stderr ;
 scalar_t__ strcmp (int ,int ) ;
 int throughput_wait_secs ;
 int usleep (int) ;

int monitor_processes(int *nb_pid)
{
int pid_count, fd_count, result_count;
int i,j;
pidinfo_t pidinfo_list[MAX_PIDS];
fdinfo_t fdinfo;
fdinfo_t biggest_fd;
int fdnum_list[MAX_FD_PER_PID];
off_t max_size;
char fsize[64];
char fpos[64];
char ftroughput[64];
float perc;
result_t results[MAX_RESULTS];
signed char still_there;
signed char search_all = 1;
static signed char first_pass = 1;

pid_count = 0;
if (!flag_monitor && !flag_monitor_continuous)
    first_pass = 0;


if (proc_specifiq_name_cnt) {
    search_all = 0;
    for (i = 0 ; i < proc_specifiq_name_cnt ; ++i) {
        pid_count += find_pids_by_binary_name(proc_specifiq_name[i],
                                              pidinfo_list + pid_count,
                                              MAX_PIDS - pid_count);
        if(pid_count >= MAX_PIDS) {
            nfprintf(stderr, "Found too much procs (max = %d)\n",MAX_PIDS);
            return 0;
        }
    }
}

if (proc_specifiq_pid) {
    search_all = 0;
    for (i = 0 ; i < proc_specifiq_pid_cnt ; ++i) {
        pid_count += find_pid_by_id(proc_specifiq_pid[i],
                                    pidinfo_list + pid_count);

        if(pid_count >= MAX_PIDS) {
            nfprintf(stderr, "Found too much procs (max = %d)\n",MAX_PIDS);
            return 0;
        }
    }
}

if (search_all) {
    for (i = 0 ; i < proc_names_cnt ; i++) {
        pid_count += find_pids_by_binary_name(proc_names[i],
                                              pidinfo_list + pid_count,
                                              MAX_PIDS - pid_count);
        if(pid_count >= MAX_PIDS) {
            nfprintf(stderr, "Found too much procs (max = %d)\n",MAX_PIDS);
            return 0;
        }
    }
}

*nb_pid = pid_count;

if (!pid_count) {
    if (flag_quiet)
        return 0;
    if (flag_monitor || flag_monitor_continuous) {
        clear();
 refresh();
    }
    if (proc_specifiq_pid_cnt) {
        nfprintf(stderr, "No such pid: ");
        for (i = 0 ; i < proc_specifiq_pid_cnt; ++i) {
            nfprintf(stderr, "%d, ", proc_specifiq_pid[i]);
        }
    }
    if (proc_specifiq_name_cnt)
    {
        nfprintf(stderr, "No such command(s) running: ");
        for (i = 0 ; i < proc_specifiq_name_cnt; ++i) {
            nfprintf(stderr, "%s, ", proc_specifiq_name[i]);
        }
    }
    if (!proc_specifiq_pid && !proc_specifiq_name_cnt) {
        nfprintf(stderr,"No command currently running: ");
        for (i = 0 ; i < proc_names_cnt ; i++) {
            nfprintf(stderr,"%s, ", proc_names[i]);
        }
    }
    nfprintf(stderr,"or wrong permissions.\n");
    first_pass = 0;
    return 0;
}

result_count = 0;

for (i = 0 ; i < pid_count ; i++) {
    fd_count = find_fd_for_pid(pidinfo_list[i].pid, fdnum_list, MAX_FD_PER_PID);

    max_size = 0;


    for (j = 0 ; j < fd_count ; j++) {
        get_fdinfo(pidinfo_list[i].pid, fdnum_list[j], &fdinfo);

        if (flag_open_mode == PM_READ && fdinfo.mode != PM_READ && fdinfo.mode != PM_READWRITE)
            continue;
        if (flag_open_mode == PM_WRITE && fdinfo.mode != PM_WRITE && fdinfo.mode != PM_READWRITE)
            continue;

        if (fdinfo.size > max_size) {
            biggest_fd = fdinfo;
            max_size = fdinfo.size;
        }
    }

    if (!max_size) {





        continue;
    }


    results[result_count].pid = pidinfo_list[i];
    results[result_count].fd = biggest_fd;
    results[result_count].hbegin = ((void*)0);
    results[result_count].hend = ((void*)0);
    results[result_count].hsize = 0;

    result_count++;
}


if (flag_throughput && !first_pass)
    usleep(1000000 * throughput_wait_secs);
if (flag_monitor || flag_monitor_continuous) {
    clear();
}
copy_and_clean_results(results, result_count, 1);
for (i = 0 ; i < result_count ; i++) {

    if (flag_throughput && !first_pass) {
        still_there = get_fdinfo(results[i].pid.pid, results[i].fd.num, &fdinfo);
        if (still_there && strcmp(results[i].fd.name, fdinfo.name))
            still_there = 0;
    } else
        still_there = 0;

    if (!still_there) {

        format_size(results[i].fd.pos, fpos);
        format_size(results[i].fd.size, fsize);
        perc = ((double)100 / (double)results[i].fd.size) * (double)results[i].fd.pos;
    } else {

        format_size(fdinfo.pos, fpos);
        format_size(fdinfo.size, fsize);
        perc = ((double)100 / (double)fdinfo.size) * (double)fdinfo.pos;

    }

    nprintf("[%5d] %s %s\n\t%.1f%% (%s / %s)",
        results[i].pid.pid,
        results[i].pid.name,
        results[i].fd.name,
        perc,
        fpos,
        fsize);

    if (flag_throughput && still_there && !first_pass) {

        long long usec_diff;
        off_t byte_diff;
        off_t bytes_per_sec;

        usec_diff = (fdinfo.tv.tv_sec - results[i].fd.tv.tv_sec) * 1000000L
                    + (fdinfo.tv.tv_usec - results[i].fd.tv.tv_usec);
        byte_diff = fdinfo.pos - results[i].fd.pos;
        results[i].hsize += add_to_hlist(&results[i].hbegin, &results[i].hend, results[i].hsize, byte_diff / (usec_diff / 1000000.0));
        bytes_per_sec = get_hlist_average(results[i].hbegin, results[i].hsize);

        format_size(bytes_per_sec, ftroughput);
        nprintf(" %s/s", ftroughput);
        if (bytes_per_sec && fdinfo.size - fdinfo.pos >= 0) {
            print_eta((fdinfo.size - fdinfo.pos) / bytes_per_sec);
        }
    }


    nprintf("\n\n");





}
if (flag_monitor || flag_monitor_continuous) {
    if (!result_count)
        nprintf("No PID(s) currently monitored\n");
    refresh();
}
copy_and_clean_results(results, result_count, 0);
first_pass = 0;
return 0;
}
