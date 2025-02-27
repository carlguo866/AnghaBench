; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_send_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_hal = type { i32, i32, i32 }

@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@MALO_REG_GEN_PTR = common dso_local global i32 0, align 4
@MALO_REG_INT_CODE = common dso_local global i32 0, align 4
@MALO_REG_H2A_INTERRUPT_EVENTS = common dso_local global i32 0, align 4
@MALO_H2ARIC_BIT_DOOR_BELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malo_hal*)* @malo_hal_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malo_hal_send_cmd(%struct.malo_hal* %0) #0 {
  %2 = alloca %struct.malo_hal*, align 8
  %3 = alloca i32, align 4
  store %struct.malo_hal* %0, %struct.malo_hal** %2, align 8
  %4 = load %struct.malo_hal*, %struct.malo_hal** %2, align 8
  %5 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.malo_hal*, %struct.malo_hal** %2, align 8
  %8 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %11 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @bus_dmamap_sync(i32 %6, i32 %9, i32 %12)
  %14 = load %struct.malo_hal*, %struct.malo_hal** %2, align 8
  %15 = load i32, i32* @MALO_REG_GEN_PTR, align 4
  %16 = load %struct.malo_hal*, %struct.malo_hal** %2, align 8
  %17 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @malo_hal_write4(%struct.malo_hal* %14, i32 %15, i32 %18)
  %20 = load %struct.malo_hal*, %struct.malo_hal** %2, align 8
  %21 = load i32, i32* @MALO_REG_INT_CODE, align 4
  %22 = call i32 @malo_hal_read4(%struct.malo_hal* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load %struct.malo_hal*, %struct.malo_hal** %2, align 8
  %24 = load i32, i32* @MALO_REG_H2A_INTERRUPT_EVENTS, align 4
  %25 = load i32, i32* @MALO_H2ARIC_BIT_DOOR_BELL, align 4
  %26 = call i32 @malo_hal_write4(%struct.malo_hal* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @malo_hal_write4(%struct.malo_hal*, i32, i32) #1

declare dso_local i32 @malo_hal_read4(%struct.malo_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
