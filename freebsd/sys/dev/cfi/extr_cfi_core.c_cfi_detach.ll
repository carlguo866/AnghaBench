; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_softc = type { i32, i32, i32, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfi_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.cfi_softc* @device_get_softc(i32 %4)
  store %struct.cfi_softc* %5, %struct.cfi_softc** %3, align 8
  %6 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @destroy_dev(i32 %8)
  %10 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @M_TEMP, align 4
  %14 = call i32 @free(i32 %12, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %18 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cfi_softc*, %struct.cfi_softc** %3, align 8
  %21 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bus_release_resource(i32 %15, i32 %16, i32 %19, i32 %22)
  ret i32 0
}

declare dso_local %struct.cfi_softc* @device_get_softc(i32) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
