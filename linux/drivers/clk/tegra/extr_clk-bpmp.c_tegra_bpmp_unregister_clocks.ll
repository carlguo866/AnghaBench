; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_unregister_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-bpmp.c_tegra_bpmp_unregister_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_bpmp*)* @tegra_bpmp_unregister_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_bpmp_unregister_clocks(%struct.tegra_bpmp* %0) #0 {
  %2 = alloca %struct.tegra_bpmp*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @clk_hw_unregister(i32* %18)
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

23:                                               ; preds = %4
  ret void
}

declare dso_local i32 @clk_hw_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
