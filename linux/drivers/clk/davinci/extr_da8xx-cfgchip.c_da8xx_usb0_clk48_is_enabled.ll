; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_da8xx_usb0_clk48_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_da8xx_usb0_clk48_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.da8xx_usb0_clk48 = type { i32 }

@CFGCHIP2_PHYCLKGD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @da8xx_usb0_clk48_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_usb0_clk48_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.da8xx_usb0_clk48*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.da8xx_usb0_clk48* @to_da8xx_usb0_clk48(%struct.clk_hw* %5)
  store %struct.da8xx_usb0_clk48* %6, %struct.da8xx_usb0_clk48** %3, align 8
  %7 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %3, align 8
  %8 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @CFGCHIP(i32 2)
  %11 = call i32 @regmap_read(i32 %9, i32 %10, i32* %4)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CFGCHIP2_PHYCLKGD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local %struct.da8xx_usb0_clk48* @to_da8xx_usb0_clk48(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @CFGCHIP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
