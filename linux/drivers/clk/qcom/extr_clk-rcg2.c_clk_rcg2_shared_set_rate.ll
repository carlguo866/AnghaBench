; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_shared_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_shared_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rcg2 = type { i32 }
%struct.freq_tbl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_rcg2_shared_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rcg2_shared_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_rcg2*, align 8
  %9 = alloca %struct.freq_tbl*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw* %10)
  store %struct.clk_rcg2* %11, %struct.clk_rcg2** %8, align 8
  %12 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %13 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call %struct.freq_tbl* @qcom_find_freq(i32 %14, i64 %15)
  store %struct.freq_tbl* %16, %struct.freq_tbl** %9, align 8
  %17 = load %struct.freq_tbl*, %struct.freq_tbl** %9, align 8
  %18 = icmp ne %struct.freq_tbl* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %3
  %23 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %24 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__clk_is_enabled(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load %struct.clk_rcg2*, %struct.clk_rcg2** %8, align 8
  %30 = load %struct.freq_tbl*, %struct.freq_tbl** %9, align 8
  %31 = call i32 @__clk_rcg2_configure(%struct.clk_rcg2* %29, %struct.freq_tbl* %30)
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %34 = load %struct.freq_tbl*, %struct.freq_tbl** %9, align 8
  %35 = call i32 @clk_rcg2_shared_force_enable_clear(%struct.clk_hw* %33, %struct.freq_tbl* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %28, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.clk_rcg2* @to_clk_rcg2(%struct.clk_hw*) #1

declare dso_local %struct.freq_tbl* @qcom_find_freq(i32, i64) #1

declare dso_local i32 @__clk_is_enabled(i32) #1

declare dso_local i32 @__clk_rcg2_configure(%struct.clk_rcg2*, %struct.freq_tbl*) #1

declare dso_local i32 @clk_rcg2_shared_force_enable_clear(%struct.clk_hw*, %struct.freq_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
