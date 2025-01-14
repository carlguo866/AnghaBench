
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn {scalar_t__ code; scalar_t__ imm; } ;


 int MAX_INSNS ;

__attribute__((used)) static int probe_filter_length(const struct bpf_insn *fp)
{
 int len;

 for (len = MAX_INSNS - 1; len > 0; --len)
  if (fp[len].code != 0 || fp[len].imm != 0)
   break;
 return len + 1;
}
