
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct device_node {int dummy; } ;
struct clk_onecell_data {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int CLK_AUDIO_NR_CLK ;
 int audio_clks ;
 int dev_err (TYPE_1__*,char*,int ,int) ;
 int devm_of_platform_populate (TYPE_1__*) ;
 struct clk_onecell_data* mtk_alloc_clk_data (int ) ;
 int mtk_clk_register_gates (struct device_node*,int ,int ,struct clk_onecell_data*) ;
 int of_clk_add_provider (struct device_node*,int ,struct clk_onecell_data*) ;
 int of_clk_del_provider (struct device_node*) ;
 int of_clk_src_onecell_get ;

__attribute__((used)) static int clk_mt7622_audiosys_init(struct platform_device *pdev)
{
 struct clk_onecell_data *clk_data;
 struct device_node *node = pdev->dev.of_node;
 int r;

 clk_data = mtk_alloc_clk_data(CLK_AUDIO_NR_CLK);

 mtk_clk_register_gates(node, audio_clks, ARRAY_SIZE(audio_clks),
          clk_data);

 r = of_clk_add_provider(node, of_clk_src_onecell_get, clk_data);
 if (r) {
  dev_err(&pdev->dev,
   "could not register clock provider: %s: %d\n",
   pdev->name, r);

  goto err_clk_provider;
 }

 r = devm_of_platform_populate(&pdev->dev);
 if (r)
  goto err_plat_populate;

 return 0;

err_plat_populate:
 of_clk_del_provider(node);
err_clk_provider:
 return r;
}
