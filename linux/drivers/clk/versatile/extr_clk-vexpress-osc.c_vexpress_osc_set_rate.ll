; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-vexpress-osc.c_vexpress_osc_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-vexpress-osc.c_vexpress_osc_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.vexpress_osc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @vexpress_osc_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vexpress_osc_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vexpress_osc*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %9 = call %struct.vexpress_osc* @to_vexpress_osc(%struct.clk_hw* %8)
  store %struct.vexpress_osc* %9, %struct.vexpress_osc** %7, align 8
  %10 = load %struct.vexpress_osc*, %struct.vexpress_osc** %7, align 8
  %11 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @regmap_write(i32 %12, i32 0, i64 %13)
  ret i32 %14
}

declare dso_local %struct.vexpress_osc* @to_vexpress_osc(%struct.clk_hw*) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
