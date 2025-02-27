
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AU_IPv4 ;
 int AU_IPv6 ;
 scalar_t__ EEXIST ;
 int EX_OSERR ;
 int do_error_records (char const*) ;
 scalar_t__ do_records ;
 scalar_t__ do_tokens ;
 int err (int ,char*,char const*) ;
 scalar_t__ errno ;
 int generate_arg32_record (char const*,char*) ;
 int generate_arg32_token (char const*,char*) ;
 int generate_attr32_record (char const*,char*) ;
 int generate_attr32_token (char const*,char*) ;
 int generate_attr_record (char const*,char*) ;
 int generate_attr_token (char const*,char*) ;
 int generate_data_record (char const*,char*) ;
 int generate_data_token (char const*,char*) ;
 int generate_file_record (char const*,char*) ;
 int generate_file_token (char const*,char*) ;
 int generate_groups_record (char const*,char*) ;
 int generate_groups_token (char const*,char*) ;
 int generate_header32_token (char const*,char*) ;
 int generate_in_addr_record (char const*,char*) ;
 int generate_in_addr_token (char const*,char*) ;
 int generate_ip_record (char const*,char*) ;
 int generate_ip_token (char const*,char*) ;
 int generate_ipc_perm_record (char const*,char*) ;
 int generate_ipc_perm_token (char const*,char*) ;
 int generate_ipc_record (char const*,char*) ;
 int generate_ipc_token (char const*,char*) ;
 int generate_iport_record (char const*,char*) ;
 int generate_iport_token (char const*,char*) ;
 int generate_opaque_record (char const*,char*) ;
 int generate_opaque_token (char const*,char*) ;
 int generate_path_record (char const*,char*) ;
 int generate_path_token (char const*,char*) ;
 int generate_process32_record (char const*,char*) ;
 int generate_process32_token (char const*,char*) ;
 int generate_process32ex_record (char const*,char*,int ) ;
 int generate_process32ex_token (char const*,char*,int ) ;
 int generate_process64_record (char const*,char*) ;
 int generate_process64_token (char const*,char*) ;
 int generate_process64ex_record (char const*,char*,int ) ;
 int generate_process64ex_token (char const*,char*,int ) ;
 int generate_return32_record (char const*,char*) ;
 int generate_return32_token (char const*,char*) ;
 int generate_seq_record (char const*,char*) ;
 int generate_seq_token (char const*,char*) ;
 int generate_socketex_record (char const*,char*) ;
 int generate_socketex_token (char const*,char*) ;
 int generate_subject32_record (char const*,char*) ;
 int generate_subject32_token (char const*,char*) ;
 int generate_subject32ex_record (char const*,char*,int ) ;
 int generate_subject32ex_token (char const*,char*,int ) ;
 int generate_text_record (char const*,char*) ;
 int generate_text_token (char const*,char*) ;
 int generate_trailer_token (char const*,char*) ;
 int generate_zonename_record (char const*,char*) ;
 int generate_zonename_token (char const*,char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ mkdir (char const*,int) ;
 scalar_t__ optind ;
 int usage () ;

int
main(int argc, char *argv[])
{
 const char *directory;
 int ch;

 while ((ch = getopt(argc, argv, "rt")) != -1) {
  switch (ch) {
  case 'r':
   do_records++;
   break;

  case 't':
   do_tokens++;
   break;

  default:
   usage();
  }
 }

 argc -= optind;
 argv += optind;

 if (argc != 1)
  usage();

 directory = argv[0];

 if (mkdir(directory, 0755) < 0 && errno != EEXIST)
  err(EX_OSERR, "mkdir: %s", directory);

 if (do_tokens) {
  generate_file_token(directory, "file_token");
  generate_trailer_token(directory, "trailer_token");
  generate_header32_token(directory, "header32_token");
  generate_data_token(directory, "data_token");
  generate_ipc_token(directory, "ipc_token");
  generate_path_token(directory, "path_token");
  generate_subject32_token(directory, "subject32_token");
  generate_subject32ex_token(directory, "subject32ex_token",
      AU_IPv4);
  generate_subject32ex_token(directory, "subject32ex_token",
      AU_IPv6);
  generate_process32_token(directory, "process32_token");
  generate_process32ex_token(directory, "process32ex_token",
      AU_IPv4);
  generate_process32ex_token(directory, "process32ex_token",
      AU_IPv6);
  generate_process64_token(directory, "process64_token");
  generate_process64ex_token(directory, "process64ex_token",
      AU_IPv4);
  generate_process64ex_token(directory, "process64ex_token",
      AU_IPv6);
  generate_return32_token(directory, "return32_token");
  generate_text_token(directory, "text_token");
  generate_opaque_token(directory, "opaque_token");
  generate_in_addr_token(directory, "in_addr_token");
  generate_ip_token(directory, "ip_token");
  generate_iport_token(directory, "iport_token");
  generate_arg32_token(directory, "arg32_token");
  generate_seq_token(directory, "seq_token");






  generate_zonename_token(directory, "zonename_token");
  generate_socketex_token(directory, "socketex_token");
 }

 if (do_records) {
  generate_file_record(directory, "file_record");
  generate_data_record(directory, "data_record");
  generate_ipc_record(directory, "ipc_record");
  generate_path_record(directory, "path_record");
  generate_subject32_record(directory, "subject32_record");
  generate_subject32ex_record(directory, "subject32ex_record",
      AU_IPv4);
  generate_subject32ex_record(directory, "subject32ex_record",
      AU_IPv6);
  generate_process32_record(directory, "process32_record");
  generate_process32ex_record(directory, "process32ex_record",
      AU_IPv4);
  generate_process32ex_record(directory, "process32ex_record",
      AU_IPv6);
  generate_process64_record(directory, "process64_record");
  generate_process64ex_record(directory, "process64ex_record",
      AU_IPv4);
  generate_process64ex_record(directory, "process64ex_record",
      AU_IPv6);
  generate_return32_record(directory, "return32_record");
  generate_text_record(directory, "text_record");
  generate_opaque_record(directory, "opaque_record");
  generate_in_addr_record(directory, "in_addr_record");
  generate_ip_record(directory, "ip_record");
  generate_iport_record(directory, "iport_record");
  generate_arg32_record(directory, "arg32_record");
  generate_seq_record(directory, "seq_record");






  generate_zonename_record(directory, "zonename_record");
  generate_socketex_record(directory, "socketex_record");
  do_error_records(directory);
 }

 return (0);
}
