
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct label*,struct label*) ;
 int pipe_copy_label ;

void
mac_pipe_copy_label(struct label *src, struct label *dest)
{

 MAC_POLICY_PERFORM_NOSLEEP(pipe_copy_label, src, dest);
}
