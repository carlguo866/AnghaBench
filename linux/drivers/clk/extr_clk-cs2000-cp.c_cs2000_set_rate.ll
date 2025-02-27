; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cs2000-cp.c_cs2000_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.cs2000_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @cs2000_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs2000_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cs2000_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.cs2000_priv* @hw_to_priv(%struct.clk_hw* %9)
  store %struct.cs2000_priv* %10, %struct.cs2000_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.cs2000_priv*, %struct.cs2000_priv** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @__cs2000_set_rate(%struct.cs2000_priv* %11, i32 %12, i64 %13, i64 %14)
  ret i32 %15
}

declare dso_local %struct.cs2000_priv* @hw_to_priv(%struct.clk_hw*) #1

declare dso_local i32 @__cs2000_set_rate(%struct.cs2000_priv*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
