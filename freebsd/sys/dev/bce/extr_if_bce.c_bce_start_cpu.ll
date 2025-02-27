; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_start_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_start_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32 }
%struct.cpu_reg = type { i32, i32, i32, i32 }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*, %struct.cpu_reg*)* @bce_start_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_start_cpu(%struct.bce_softc* %0, %struct.cpu_reg* %1) #0 {
  %3 = alloca %struct.bce_softc*, align 8
  %4 = alloca %struct.cpu_reg*, align 8
  %5 = alloca i32, align 4
  store %struct.bce_softc* %0, %struct.bce_softc** %3, align 8
  store %struct.cpu_reg* %1, %struct.cpu_reg** %4, align 8
  %6 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %7 = call i32 @DBENTER(i32 %6)
  %8 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %9 = load %struct.cpu_reg*, %struct.cpu_reg** %4, align 8
  %10 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @REG_RD_IND(%struct.bce_softc* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.cpu_reg*, %struct.cpu_reg** %4, align 8
  %14 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %20 = load %struct.cpu_reg*, %struct.cpu_reg** %4, align 8
  %21 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cpu_reg*, %struct.cpu_reg** %4, align 8
  %24 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @REG_WR_IND(%struct.bce_softc* %19, i32 %22, i32 %25)
  %27 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %28 = load %struct.cpu_reg*, %struct.cpu_reg** %4, align 8
  %29 = getelementptr inbounds %struct.cpu_reg, %struct.cpu_reg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @REG_WR_IND(%struct.bce_softc* %27, i32 %30, i32 %31)
  %33 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %34 = call i32 @DBEXIT(i32 %33)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @REG_RD_IND(%struct.bce_softc*, i32) #1

declare dso_local i32 @REG_WR_IND(%struct.bce_softc*, i32, i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
