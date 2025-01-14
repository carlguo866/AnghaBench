
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;


 int GFP_KERNEL ;
 int HZ ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 char* arc_cache_mumbojumbo (int,char*,int ) ;
 char* arc_cpu_mumbojumbo (int,char*,int ) ;
 char* arc_extn_mumbojumbo (int,char*,int ) ;
 char* arc_mmu_mumbojumbo (int,char*,int ) ;
 char* arc_platform_smp_cpuinfo () ;
 struct clk* clk_get (struct device*,int *) ;
 unsigned long clk_get_rate (struct clk*) ;
 int cpu_online (int) ;
 int free_page (unsigned long) ;
 struct device* get_cpu_device (int) ;
 int loops_per_jiffy ;
 int ptr_to_cpu (void*) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int show_cpuinfo(struct seq_file *m, void *v)
{
 char *str;
 int cpu_id = ptr_to_cpu(v);
 struct device *cpu_dev = get_cpu_device(cpu_id);
 struct clk *cpu_clk;
 unsigned long freq = 0;

 if (!cpu_online(cpu_id)) {
  seq_printf(m, "processor [%d]\t: Offline\n", cpu_id);
  goto done;
 }

 str = (char *)__get_free_page(GFP_KERNEL);
 if (!str)
  goto done;

 seq_printf(m, arc_cpu_mumbojumbo(cpu_id, str, PAGE_SIZE));

 cpu_clk = clk_get(cpu_dev, ((void*)0));
 if (IS_ERR(cpu_clk)) {
  seq_printf(m, "CPU speed \t: Cannot get clock for processor [%d]\n",
      cpu_id);
 } else {
  freq = clk_get_rate(cpu_clk);
 }
 if (freq)
  seq_printf(m, "CPU speed\t: %lu.%02lu Mhz\n",
      freq / 1000000, (freq / 10000) % 100);

 seq_printf(m, "Bogo MIPS\t: %lu.%02lu\n",
     loops_per_jiffy / (500000 / HZ),
     (loops_per_jiffy / (5000 / HZ)) % 100);

 seq_printf(m, arc_mmu_mumbojumbo(cpu_id, str, PAGE_SIZE));
 seq_printf(m, arc_cache_mumbojumbo(cpu_id, str, PAGE_SIZE));
 seq_printf(m, arc_extn_mumbojumbo(cpu_id, str, PAGE_SIZE));
 seq_printf(m, arc_platform_smp_cpuinfo());

 free_page((unsigned long)str);
done:
 seq_printf(m, "\n");

 return 0;
}
