
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int replica_prefix; } ;
struct TYPE_7__ {TYPE_1__* info; } ;
struct TYPE_6__ {char* filename; int file_size; } ;


 TYPE_2__* Binlog ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int SEEK_END ;
 void* atoi (char*) ;
 scalar_t__ atoll (char*) ;
 char* binlogname ;
 scalar_t__ change_user (char*) ;
 int clear_log () ;
 int close (int) ;
 int copy_mod ;
 int copy_rem ;
 scalar_t__ engine_preload_filelist (char*,char*) ;
 TYPE_3__* engine_replica ;
 int exit (int) ;
 scalar_t__ fdatasync (int) ;
 int flush_out () ;
 int fprintf (int ,char*,char) ;
 int getopt (int,char**,char*) ;
 int init_cache_data (int ) ;
 int init_log_data (scalar_t__,int ,int ) ;
 scalar_t__ jump_log_pos ;
 int kprintf (char*,...) ;
 scalar_t__ log_limit_pos ;
 scalar_t__ log_readto_pos ;
 scalar_t__ lseek (int,int ,int ) ;
 int open (char*,int,int) ;
 TYPE_2__* open_binlog (TYPE_3__*,scalar_t__) ;
 char* optarg ;
 int optind ;
 char* output_cache_id ;
 int output_stats () ;
 char* progname ;
 int replay_log (int ,int) ;
 int sscanf (char*,char*,int *,int *) ;
 void* start_timestamp ;
 int stderr ;
 int targ_existed ;
 int targ_fd ;
 char* targ_fname ;
 scalar_t__ targ_orig_size ;
 void* time (int *) ;
 int usage () ;
 char* username ;
 scalar_t__ verbosity ;
 int vkprintf (int,char*,char*,int ) ;
 int write_local_copies_logevents ;

int main (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = getopt (argc, argv, "C:LS:hm:s:t:u:v")) != -1) {
    switch (i) {
    case 'C':
      output_cache_id = atoi (optarg);
      break;
    case 'L':
      write_local_copies_logevents = 0;
      break;
    case 'S':
      start_timestamp = atoi (optarg);
      if (start_timestamp > time (((void*)0))) {
        kprintf ("start_timestamps could be after current time\n");
        exit (1);
      }
      break;
    case 'h':
      usage ();
      return 2;
    case 'm':
      if (sscanf (optarg, "%d,%d", &copy_rem, &copy_mod) != 2 || copy_rem < 0 || copy_rem >= copy_mod) {
       usage();
      }
      break;
    case 's':
      jump_log_pos = atoll (optarg);
      break;
    case 't':
      log_limit_pos = atoll (optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'v':
      verbosity = 1;
      break;
    default:
      fprintf (stderr, "Unimplemented option -%c\n", (char) i);
      exit (1);
    }
  }

  if (optind >= argc || optind + 2 < argc) {
    usage ();
  }

  if (log_limit_pos >= 0) {
    if (jump_log_pos > log_limit_pos) {
      kprintf ("fatal: log start position %lld after stop position %lld\n", jump_log_pos, log_limit_pos);
      return 2;
    }
  }

  if (change_user (username) < 0) {
    kprintf ("fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  if (engine_preload_filelist (argv[optind], binlogname) < 0) {
    kprintf ("cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    exit (1);
  }

  Binlog = open_binlog (engine_replica, jump_log_pos);
  if (!Binlog) {
    kprintf ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, 0LL);
    exit (1);
  }

  binlogname = Binlog->info->filename;

  vkprintf (1, "replaying binlog file %s (size %lld)\n", binlogname, Binlog->info->file_size);

  clear_log ();

  init_log_data (jump_log_pos, 0, 0);

  if (jump_log_pos > 0) {
    init_cache_data (0);
  }

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = open (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      kprintf ("cannot create %s: %m\n", targ_fname);
      return 1;
    }
    targ_orig_size = lseek (targ_fd, 0, SEEK_END);
    targ_existed = (targ_orig_size > 0);
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  if (output_cache_id > 0 && targ_existed) {
    kprintf ("You couldn't specify '-C %d' and existed target together.\n", output_cache_id);
    exit (1);
  }

  i = replay_log (0, 1);

  if (i < 0) {
    kprintf ("fatal: error reading binlog\n");
    exit (1);
  }

  if (log_limit_pos >= 0 && log_readto_pos != log_limit_pos) {
    kprintf ("fatal: binlog read up to position %lld instead of %lld\n", log_readto_pos, log_limit_pos);
    exit (1);
  }

  flush_out ();

  if (targ_fd != 1) {
    if (fdatasync (targ_fd) < 0) {
      kprintf ("error syncing %s: %m", targ_fname);
      exit (1);
    }
    close (targ_fd);
  }

  if (verbosity > 0) {
    output_stats ();
  }

  return 0;
}
