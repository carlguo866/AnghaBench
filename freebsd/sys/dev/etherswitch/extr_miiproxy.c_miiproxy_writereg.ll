; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/extr_miiproxy.c_miiproxy_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/extr_miiproxy.c_miiproxy_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miiproxy_softc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @miiproxy_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miiproxy_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.miiproxy_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.miiproxy_softc* @device_get_softc(i32 %11)
  store %struct.miiproxy_softc* %12, %struct.miiproxy_softc** %10, align 8
  %13 = load %struct.miiproxy_softc*, %struct.miiproxy_softc** %10, align 8
  %14 = getelementptr inbounds %struct.miiproxy_softc, %struct.miiproxy_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.miiproxy_softc*, %struct.miiproxy_softc** %10, align 8
  %19 = getelementptr inbounds %struct.miiproxy_softc, %struct.miiproxy_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @MDIO_WRITEREG(i32* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local %struct.miiproxy_softc* @device_get_softc(i32) #1

declare dso_local i32 @MDIO_WRITEREG(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
