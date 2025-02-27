; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-gen2-cpg.c_cpg_z_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-gen2-cpg.c_cpg_z_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @cpg_z_clk_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cpg_z_clk_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i64 1, i64* %7, align 8
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i64, i64* %5, align 8
  %16 = trunc i64 %15 to i32
  %17 = mul nsw i32 %16, 32
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @div_u64(i32 %17, i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @clamp(i32 %20, i32 1, i32 32)
  store i32 %21, i32* %8, align 4
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = udiv i64 %23, 32
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 %24, %26
  ret i64 %27
}

declare dso_local i32 @div_u64(i32, i64) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
