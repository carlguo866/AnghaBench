
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stfsm_seq {int dummy; } ;
struct stfsm {int dev; } ;
struct seq_rw_config {int dummy; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int stfsm_prepare_rw_seq (struct stfsm*,struct stfsm_seq*,struct seq_rw_config*) ;
 struct seq_rw_config* stfsm_search_seq_rw_configs (struct stfsm*,struct seq_rw_config*) ;

__attribute__((used)) static int stfsm_search_prepare_rw_seq(struct stfsm *fsm,
           struct stfsm_seq *seq,
           struct seq_rw_config *cfgs)
{
 struct seq_rw_config *config;

 config = stfsm_search_seq_rw_configs(fsm, cfgs);
 if (!config) {
  dev_err(fsm->dev, "failed to find suitable config\n");
  return -EINVAL;
 }

 stfsm_prepare_rw_seq(fsm, seq, config);

 return 0;
}
