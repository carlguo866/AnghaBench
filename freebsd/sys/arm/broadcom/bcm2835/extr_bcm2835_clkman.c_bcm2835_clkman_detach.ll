; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_clkman.c_bcm2835_clkman_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_clkman.c_bcm2835_clkman_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_clkman_softc = type { i64 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm2835_clkman_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_clkman_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm2835_clkman_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @bus_generic_detach(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.bcm2835_clkman_softc* @device_get_softc(i32 %6)
  store %struct.bcm2835_clkman_softc* %7, %struct.bcm2835_clkman_softc** %3, align 8
  %8 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %3, align 8
  %16 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @bus_release_resource(i32 %13, i32 %14, i32 0, i64 %17)
  br label %19

19:                                               ; preds = %12, %1
  ret i32 0
}

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local %struct.bcm2835_clkman_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
