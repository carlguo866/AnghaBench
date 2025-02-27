; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pcie_load_given_ucode_8000.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_pcie_load_given_ucode_8000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_fw_img = type { i64 }

@IWM_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"working with %s CPU\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Dual\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Single\00", align 1
@IWM_RELEASE_CPU_RESET = common dso_local global i32 0, align 4
@IWM_RELEASE_CPU_RESET_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_pcie_load_given_ucode_8000(%struct.iwm_softc* %0, %struct.iwm_fw_img* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca %struct.iwm_fw_img*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store %struct.iwm_fw_img* %1, %struct.iwm_fw_img** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %9 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %10 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %5, align 8
  %11 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %8, i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %18 = call i64 @iwm_nic_lock(%struct.iwm_softc* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %22 = load i32, i32* @IWM_RELEASE_CPU_RESET, align 4
  %23 = load i32, i32* @IWM_RELEASE_CPU_RESET_BIT, align 4
  %24 = call i32 @iwm_write_prph(%struct.iwm_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %26 = call i32 @iwm_nic_unlock(%struct.iwm_softc* %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %29 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %5, align 8
  %30 = call i32 @iwm_pcie_load_cpu_sections_8000(%struct.iwm_softc* %28, %struct.iwm_fw_img* %29, i32 1, i32* %7)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %37 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %5, align 8
  %38 = call i32 @iwm_pcie_load_cpu_sections_8000(%struct.iwm_softc* %36, %struct.iwm_fw_img* %37, i32 2, i32* %7)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %33
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i8*) #1

declare dso_local i64 @iwm_nic_lock(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_write_prph(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_nic_unlock(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_pcie_load_cpu_sections_8000(%struct.iwm_softc*, %struct.iwm_fw_img*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
