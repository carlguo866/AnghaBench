; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-dove.c_dove_audio1_ctrl_gpio_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-dove.c_dove_audio1_ctrl_gpio_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mpp_ctrl_data = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_mpp_ctrl_data*, i32)* @dove_audio1_ctrl_gpio_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dove_audio1_ctrl_gpio_req(%struct.mvebu_mpp_ctrl_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvebu_mpp_ctrl_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mvebu_mpp_ctrl_data* %0, %struct.mvebu_mpp_ctrl_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mvebu_mpp_ctrl_data*, %struct.mvebu_mpp_ctrl_data** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @dove_audio1_ctrl_get(%struct.mvebu_mpp_ctrl_data* %7, i32 %8, i64* %6)
  %10 = load i64, i64* %6, align 8
  switch i64 %10, label %26 [
    i64 2, label %11
    i64 14, label %11
    i64 8, label %18
    i64 11, label %18
    i64 10, label %25
  ]

11:                                               ; preds = %2, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp uge i32 %12, 56
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %29

15:                                               ; preds = %11
  %16 = load i32, i32* @ENOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2, %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ule i32 %19, 55
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %29

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %25, %22, %21, %15, %14
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @dove_audio1_ctrl_get(%struct.mvebu_mpp_ctrl_data*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
