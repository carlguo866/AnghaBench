
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_clock_data {int dummy; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int hi3670_pmu_gate_clks ;
 struct hisi_clock_data* hisi_clk_init (struct device_node*,int) ;
 int hisi_clk_register_gate (int ,int,struct hisi_clock_data*) ;

__attribute__((used)) static void hi3670_clk_pmuctrl_init(struct device_node *np)
{
 struct hisi_clock_data *clk_data;
 int nr = ARRAY_SIZE(hi3670_pmu_gate_clks);

 clk_data = hisi_clk_init(np, nr);
 if (!clk_data)
  return;

 hisi_clk_register_gate(hi3670_pmu_gate_clks,
          ARRAY_SIZE(hi3670_pmu_gate_clks), clk_data);
}
