
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_ex_create_cq {int comp_channel; int comp_vector; int cqe; int user_handle; } ;
struct ib_uverbs_create_cq {int comp_channel; int comp_vector; int cqe; int user_handle; } ;
struct ib_ucq_object {int dummy; } ;
typedef int cmd_ex ;
typedef int cmd ;


 int PTR_ERR_OR_ZERO (struct ib_ucq_object*) ;
 struct ib_ucq_object* create_cq (struct uverbs_attr_bundle*,struct ib_uverbs_ex_create_cq*) ;
 int memset (struct ib_uverbs_ex_create_cq*,int ,int) ;
 int uverbs_request (struct uverbs_attr_bundle*,struct ib_uverbs_create_cq*,int) ;

__attribute__((used)) static int ib_uverbs_create_cq(struct uverbs_attr_bundle *attrs)
{
 struct ib_uverbs_create_cq cmd;
 struct ib_uverbs_ex_create_cq cmd_ex;
 struct ib_ucq_object *obj;
 int ret;

 ret = uverbs_request(attrs, &cmd, sizeof(cmd));
 if (ret)
  return ret;

 memset(&cmd_ex, 0, sizeof(cmd_ex));
 cmd_ex.user_handle = cmd.user_handle;
 cmd_ex.cqe = cmd.cqe;
 cmd_ex.comp_vector = cmd.comp_vector;
 cmd_ex.comp_channel = cmd.comp_channel;

 obj = create_cq(attrs, &cmd_ex);
 return PTR_ERR_OR_ZERO(obj);
}
