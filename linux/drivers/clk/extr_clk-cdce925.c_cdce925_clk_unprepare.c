
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_cdce925_output {int dummy; } ;


 int cdce925_clk_set_pdiv (struct clk_cdce925_output*,int ) ;
 struct clk_cdce925_output* to_clk_cdce925_output (struct clk_hw*) ;

__attribute__((used)) static void cdce925_clk_unprepare(struct clk_hw *hw)
{
 struct clk_cdce925_output *data = to_clk_cdce925_output(hw);


 cdce925_clk_set_pdiv(data, 0);
}
