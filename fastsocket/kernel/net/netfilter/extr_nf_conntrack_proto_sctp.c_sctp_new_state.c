
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum sctp_conntrack { ____Placeholder_sctp_conntrack } sctp_conntrack ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
 int pr_debug (char*,...) ;
 int * sctp_conntrack_names ;
 size_t*** sctp_conntracks ;

__attribute__((used)) static int sctp_new_state(enum ip_conntrack_dir dir,
     enum sctp_conntrack cur_state,
     int chunk_type)
{
 int i;

 pr_debug("Chunk type: %d\n", chunk_type);

 switch (chunk_type) {
 case 132:
  pr_debug("SCTP_CID_INIT\n");
  i = 0;
  break;
 case 131:
  pr_debug("SCTP_CID_INIT_ACK\n");
  i = 1;
  break;
 case 136:
  pr_debug("SCTP_CID_ABORT\n");
  i = 2;
  break;
 case 130:
  pr_debug("SCTP_CID_SHUTDOWN\n");
  i = 3;
  break;
 case 129:
  pr_debug("SCTP_CID_SHUTDOWN_ACK\n");
  i = 4;
  break;
 case 133:
  pr_debug("SCTP_CID_ERROR\n");
  i = 5;
  break;
 case 134:
  pr_debug("SCTP_CID_COOKIE_ECHO\n");
  i = 6;
  break;
 case 135:
  pr_debug("SCTP_CID_COOKIE_ACK\n");
  i = 7;
  break;
 case 128:
  pr_debug("SCTP_CID_SHUTDOWN_COMPLETE\n");
  i = 8;
  break;
 default:


  pr_debug("Unknown chunk type, Will stay in %s\n",
    sctp_conntrack_names[cur_state]);
  return cur_state;
 }

 pr_debug("dir: %d   cur_state: %s  chunk_type: %d  new_state: %s\n",
   dir, sctp_conntrack_names[cur_state], chunk_type,
   sctp_conntrack_names[sctp_conntracks[dir][i][cur_state]]);

 return sctp_conntracks[dir][i][cur_state];
}
