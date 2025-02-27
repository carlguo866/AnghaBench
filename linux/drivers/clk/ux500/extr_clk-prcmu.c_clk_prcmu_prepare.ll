; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ux500/extr_clk-prcmu.c_clk_prcmu_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ux500/extr_clk-prcmu.c_clk_prcmu_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_prcmu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_prcmu_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_prcmu_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_prcmu*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_prcmu* @to_clk_prcmu(%struct.clk_hw* %5)
  store %struct.clk_prcmu* %6, %struct.clk_prcmu** %4, align 8
  %7 = load %struct.clk_prcmu*, %struct.clk_prcmu** %4, align 8
  %8 = getelementptr inbounds %struct.clk_prcmu, %struct.clk_prcmu* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @prcmu_request_clock(i32 %9, i32 1)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.clk_prcmu*, %struct.clk_prcmu** %4, align 8
  %15 = getelementptr inbounds %struct.clk_prcmu, %struct.clk_prcmu* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local %struct.clk_prcmu* @to_clk_prcmu(%struct.clk_hw*) #1

declare dso_local i32 @prcmu_request_clock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
