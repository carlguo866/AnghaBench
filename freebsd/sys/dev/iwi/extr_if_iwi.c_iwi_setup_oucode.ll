; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_setup_oucode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_setup_oucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_firmware_ohdr = type { i32 }
%struct.iwi_softc = type { i32 }
%struct.iwi_fw = type { i32 }

@IWI_FW_MODE_UCODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s is not a ucode image\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwi_firmware_ohdr* (%struct.iwi_softc*, %struct.iwi_fw*)* @iwi_setup_oucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwi_firmware_ohdr* @iwi_setup_oucode(%struct.iwi_softc* %0, %struct.iwi_fw* %1) #0 {
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.iwi_fw*, align 8
  %5 = alloca %struct.iwi_firmware_ohdr*, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  store %struct.iwi_fw* %1, %struct.iwi_fw** %4, align 8
  %6 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %7 = load %struct.iwi_fw*, %struct.iwi_fw** %4, align 8
  %8 = call %struct.iwi_firmware_ohdr* @iwi_setup_ofw(%struct.iwi_softc* %6, %struct.iwi_fw* %7)
  store %struct.iwi_firmware_ohdr* %8, %struct.iwi_firmware_ohdr** %5, align 8
  %9 = load %struct.iwi_firmware_ohdr*, %struct.iwi_firmware_ohdr** %5, align 8
  %10 = icmp ne %struct.iwi_firmware_ohdr* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.iwi_firmware_ohdr*, %struct.iwi_firmware_ohdr** %5, align 8
  %13 = getelementptr inbounds %struct.iwi_firmware_ohdr, %struct.iwi_firmware_ohdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le32toh(i32 %14)
  %16 = load i64, i64* @IWI_FW_MODE_UCODE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iwi_fw*, %struct.iwi_fw** %4, align 8
  %23 = getelementptr inbounds %struct.iwi_fw, %struct.iwi_fw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  store %struct.iwi_firmware_ohdr* null, %struct.iwi_firmware_ohdr** %5, align 8
  br label %26

26:                                               ; preds = %18, %11, %2
  %27 = load %struct.iwi_firmware_ohdr*, %struct.iwi_firmware_ohdr** %5, align 8
  ret %struct.iwi_firmware_ohdr* %27
}

declare dso_local %struct.iwi_firmware_ohdr* @iwi_setup_ofw(%struct.iwi_softc*, %struct.iwi_fw*) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
