; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_rtcss_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-davinci.c_rtcss_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_rtc = type { i32 }

@PRTCIF_CTLR_BENL_LSB = common dso_local global i64 0, align 8
@PRTCIF_CTLR = common dso_local global i32 0, align 4
@PRTCIF_LDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_rtc*, i64, i64)* @rtcss_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtcss_write(%struct.davinci_rtc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.davinci_rtc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.davinci_rtc* %0, %struct.davinci_rtc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.davinci_rtc*, %struct.davinci_rtc** %4, align 8
  %8 = call i32 @rtcif_wait(%struct.davinci_rtc* %7)
  %9 = load %struct.davinci_rtc*, %struct.davinci_rtc** %4, align 8
  %10 = load i64, i64* @PRTCIF_CTLR_BENL_LSB, align 8
  %11 = load i64, i64* %6, align 8
  %12 = or i64 %10, %11
  %13 = load i32, i32* @PRTCIF_CTLR, align 4
  %14 = call i32 @rtcif_write(%struct.davinci_rtc* %9, i64 %12, i32 %13)
  %15 = load %struct.davinci_rtc*, %struct.davinci_rtc** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* @PRTCIF_LDATA, align 4
  %18 = call i32 @rtcif_write(%struct.davinci_rtc* %15, i64 %16, i32 %17)
  %19 = load %struct.davinci_rtc*, %struct.davinci_rtc** %4, align 8
  %20 = call i32 @rtcif_wait(%struct.davinci_rtc* %19)
  ret void
}

declare dso_local i32 @rtcif_wait(%struct.davinci_rtc*) #1

declare dso_local i32 @rtcif_write(%struct.davinci_rtc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
