; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_div_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_div_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_aic32x4_div_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_aic32x4_div_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64*, i64** %7, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @DIV_ROUND_UP(i64 %10, i64 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ugt i64 %13, 128
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %23

18:                                               ; preds = %3
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @DIV_ROUND_UP(i64 %20, i64 %21)
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i64, i64* %4, align 8
  ret i64 %24
}

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
