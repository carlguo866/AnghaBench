; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_reg.c_rtwn_usb_read_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_reg.c_rtwn_usb_read_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtwn_usb_read_4(%struct.rtwn_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @rtwn_usb_read_region_1(%struct.rtwn_softc* %7, i32 %8, i32* %6, i32 4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @le32toh(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %12, %11
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i64 @rtwn_usb_read_region_1(%struct.rtwn_softc*, i32, i32*, i32) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
