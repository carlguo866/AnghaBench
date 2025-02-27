; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_rfkill.c_ath5k_rfkill_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_rfkill.c_ath5k_rfkill_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ATH5K_DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rfkill enable (gpio:%d polarity:%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*)* @ath5k_rfkill_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_rfkill_enable(%struct.ath5k_hw* %0) #0 {
  %2 = alloca %struct.ath5k_hw*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %2, align 8
  %3 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %4 = load i32, i32* @ATH5K_DEBUG_ANY, align 4
  %5 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %3, i32 %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12)
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ath5k_hw_set_gpio_output(%struct.ath5k_hw* %14, i32 %18)
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %22 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ath5k_hw_set_gpio(%struct.ath5k_hw* %20, i32 %24, i32 %28)
  ret void
}

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath5k_hw_set_gpio_output(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_set_gpio(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
