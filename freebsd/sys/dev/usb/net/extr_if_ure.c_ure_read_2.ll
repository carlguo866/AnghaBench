; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_read_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_read_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ure_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ure_softc*, i32, i32)* @ure_read_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ure_read_2(%struct.ure_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ure_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.ure_softc* %0, %struct.ure_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 2
  %12 = shl i32 %11, 3
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, -4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ure_softc*, %struct.ure_softc** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = bitcast [4 x i32]* %8 to i32**
  %19 = call i32 @ure_read_mem(%struct.ure_softc* %15, i32 %16, i32 %17, i32** %18, i32 4)
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %21 = call i32 @UGETDW(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 65535
  ret i32 %26
}

declare dso_local i32 @ure_read_mem(%struct.ure_softc*, i32, i32, i32**, i32) #1

declare dso_local i32 @UGETDW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
