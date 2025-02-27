; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_riscv_console.c_rcons_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_riscv_console.c_rcons_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcons_softc = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@sie = common dso_local global i32 0, align 4
@SIE_SSIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rcons_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcons_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcons_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @device_get_unit(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.rcons_softc* @device_get_softc(i32 %11)
  store %struct.rcons_softc* %12, %struct.rcons_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.rcons_softc*, %struct.rcons_softc** %4, align 8
  %15 = getelementptr inbounds %struct.rcons_softc, %struct.rcons_softc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @sie, align 4
  %17 = load i32, i32* @SIE_SSIE, align 4
  %18 = call i32 @csr_set(i32 %16, i32 %17)
  %19 = load %struct.rcons_softc*, %struct.rcons_softc** %4, align 8
  %20 = getelementptr inbounds %struct.rcons_softc, %struct.rcons_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bus_generic_attach(i32 %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %10, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local %struct.rcons_softc* @device_get_softc(i32) #1

declare dso_local i32 @csr_set(i32, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
