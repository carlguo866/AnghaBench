; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_mmc.c_wusbhc_mmc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_mmc.c_wusbhc_mmc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32 (%struct.wusbhc*, i32)*, i64 }

@WUSB_CHANNEL_STOP_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wusbhc*)* @wusbhc_mmc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wusbhc_mmc_stop(%struct.wusbhc* %0) #0 {
  %2 = alloca %struct.wusbhc*, align 8
  store %struct.wusbhc* %0, %struct.wusbhc** %2, align 8
  %3 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %4 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %7 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %9 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %8, i32 0, i32 1
  %10 = load i32 (%struct.wusbhc*, i32)*, i32 (%struct.wusbhc*, i32)** %9, align 8
  %11 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %12 = load i32, i32* @WUSB_CHANNEL_STOP_DELAY_MS, align 4
  %13 = call i32 %10(%struct.wusbhc* %11, i32 %12)
  %14 = load %struct.wusbhc*, %struct.wusbhc** %2, align 8
  %15 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
