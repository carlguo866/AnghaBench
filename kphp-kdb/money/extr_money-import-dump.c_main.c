
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Args_per_line ;
 int F_WRLCK ;
 scalar_t__ GA ;
 scalar_t__ GB ;
 scalar_t__ GC ;
 scalar_t__ GS ;
 scalar_t__ GT ;
 int Gc ;
 int Gd ;
 int MAX_GROUPS ;
 int MONEY_SCHEMA_V1 ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int SEEK_END ;
 int SEEK_SET ;


 int assert (int) ;
 int at_END ;
 int atol (char*) ;
 scalar_t__ change_user (char*) ;
 int close (int) ;
 int exit (int) ;
 int flush_out () ;
 char* fname_last (char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fsync (int) ;
 int ftruncate (int,int ) ;
 int get_dump_format (char*) ;
 int getopt (int,char**,char*) ;
 char* groups_fname ;
 char* groups_fname2 ;
 scalar_t__ load_binlog_headers (int) ;
 scalar_t__ lock_whole_file (int,int ) ;
 int lseek (int,int ,int ) ;
 scalar_t__ open (char*,int,...) ;
 char* optarg ;
 int optind ;
 int output_format ;
 int output_stats () ;
 int process_account_types_row () ;
 char* progname ;
 int randomize () ;
 int read (scalar_t__,scalar_t__,int) ;
 int read_record () ;
 scalar_t__ split_max ;
 scalar_t__ split_min ;
 int split_mod ;
 scalar_t__ split_rem ;
 scalar_t__ src_fd ;
 char* src_fname ;
 int sscanf (char*,char*,scalar_t__*,int*) ;
 int start_binlog (int ,char*) ;
 int stderr ;
 int stdout_mode ;
 int table_format ;
 int targ_fd ;
 char* targ_fname ;
 int usage () ;
 char* username ;
 scalar_t__ verbosity ;
 int write_binlog_headers () ;

int main (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = getopt (argc, argv, "hvu:m:f:g:o:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      usage();
      return 2;
    case 'm':
      assert (sscanf(optarg, "%d,%d", &split_rem, &split_mod) == 2);
      assert (split_mod > 0 && split_mod <= 1000 && split_rem >= 0 && split_rem < split_mod);
      break;
    case 'f':
      table_format = get_dump_format(optarg);
      if (!table_format) {
 fprintf (stderr, "fatal: unsupported table dump format: %s\n", optarg);
 return 2;
      }
      break;
    case 'o':
      output_format = atol (optarg);
      break;
    case 'g':
      if (groups_fname) {
        groups_fname2 = optarg;
      } else {
        groups_fname = optarg;
      }
      break;
    case 'u':
      username = optarg;
      break;
    }
  }

  split_min = split_rem;
  split_max = split_rem + 1;

  if (optind >= argc || optind + 2 < argc) {
    usage();
    return 2;
  }

  src_fname = argv[optind];

  if (username && change_user (username) < 0) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  if (groups_fname) {
    src_fd = open (groups_fname, O_RDONLY);
    if (src_fd < 0) {
      fprintf (stderr, "cannot open %s: %m\n", groups_fname);
      return 1;
    }
    Gc = read (src_fd, GT, MAX_GROUPS);
    if (verbosity > 0) {
      fprintf (stderr, "read %d bytes from %s\n", Gc, groups_fname);
    }
    assert (Gc >= 0 && Gc < MAX_GROUPS);
    close (src_fd);
    src_fd = 0;
    GA = GT;
    GS = GC = GB = GA + ((Gc + 3) & -4);
  }

  if (groups_fname2) {
    src_fd = open (groups_fname2, O_RDONLY);
    if (src_fd < 0) {
      fprintf (stderr, "cannot open %s: %m\n", groups_fname2);
      return 1;
    }
    Gd = read (src_fd, GB, GA + MAX_GROUPS - GB);
    if (verbosity > 0) {
      fprintf (stderr, "read %d bytes from %s\n", Gd, groups_fname2);
    }
    assert (Gd >= 0 && Gd < MAX_GROUPS);
    close (src_fd);
    src_fd = 0;
    GS = GC = GB + ((Gd + 3) & -4);
  }

  src_fd = open (src_fname, O_RDONLY);
  if (src_fd < 0) {
    fprintf (stderr, "cannot open %s: %m\n", src_fname);
    return 1;
  }

  if (!table_format) {
    table_format = get_dump_format (fname_last (src_fname));
    if (!table_format) {
      fprintf (stderr, "fatal: cannot determine table type from filename %s\n", src_fname);
    }
  }

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = open (targ_fname, O_RDWR);
    if (targ_fd >= 0) {
      assert (lock_whole_file (targ_fd, F_WRLCK) > 0);
      if (load_binlog_headers (targ_fd) < 0) {
        fprintf (stderr, "fatal: bad binlog headers of %s\n", targ_fname);
      }
      lseek (targ_fd, 0, SEEK_END);
    } else {
      targ_fd = open (targ_fname, O_WRONLY | O_CREAT | O_EXCL, 0644);
      if (targ_fd < 0) {
        fprintf (stderr, "cannot create %s: %m\n", targ_fname);
        return 1;
      }
      assert (lock_whole_file (targ_fd, F_WRLCK) > 0);
      ftruncate (targ_fd, 0);
      lseek (targ_fd, 0, SEEK_SET);
    }
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
    stdout_mode = 1;
  }

  randomize ();

  switch (table_format) {
  case 128:
    start_binlog(MONEY_SCHEMA_V1, "money");
    Args_per_line = at_END;
    while (read_record() > 0) {
      process_account_types_row();
    }
    break;
  case 129:
  default:
    fprintf (stderr, "unknown table type\n");
    exit(1);
  }

  flush_out();
  if (targ_fd != 1) {
    write_binlog_headers ();
    if (fsync(targ_fd) < 0) {
      fprintf (stderr, "error syncing %s: %m", targ_fname);
      exit (1);
    }
    close (targ_fd);
  }

  if (verbosity > 0) {
    output_stats();
  }

  return 0;
}
