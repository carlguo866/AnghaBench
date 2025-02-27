; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds13rtc.c_read_timeword.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds13rtc.c_read_timeword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds13rtc_softc = type { i32, i32 }

@IIC_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds13rtc_softc*, i32*)* @read_timeword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_timeword(%struct.ds13rtc_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.ds13rtc_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store %struct.ds13rtc_softc* %0, %struct.ds13rtc_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %14 = load i32, i32* @IIC_WAIT, align 4
  %15 = call i32 @iicdev_readfrom(i32 %9, i32 %12, i32* %13, i32 16, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %19 = call i32 @le32dec(i32* %18)
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @iicdev_readfrom(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @le32dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
