; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_sys_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_sys_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_pllv3_sys_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pllv3_sys_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = mul i64 %13, 54
  %15 = udiv i64 %14, 2
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = mul i64 %16, 108
  %18 = udiv i64 %17, 2
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %5, align 8
  br label %31

24:                                               ; preds = %3
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %28, %24
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i64, i64* %5, align 8
  %33 = mul i64 %32, 2
  %34 = load i64, i64* %7, align 8
  %35 = udiv i64 %33, %34
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = mul i64 %36, %37
  %39 = udiv i64 %38, 2
  ret i64 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
