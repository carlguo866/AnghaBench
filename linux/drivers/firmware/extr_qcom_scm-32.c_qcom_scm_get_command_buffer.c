
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_scm_command {scalar_t__ buf; } ;



__attribute__((used)) static inline void *qcom_scm_get_command_buffer(const struct qcom_scm_command *cmd)
{
 return (void *)cmd->buf;
}
