; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_bst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_bst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_bst = type { i32, i32, i32, i32 }
%struct.acpi_cmbat_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@cmbat = common dso_local global i32 0, align 4
@ACPI_BATT_STAT_NOT_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acpi_bst*)* @acpi_cmbat_bst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cmbat_bst(i32 %0, %struct.acpi_bst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_bst*, align 8
  %5 = alloca %struct.acpi_cmbat_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.acpi_bst* %1, %struct.acpi_bst** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.acpi_cmbat_softc* @device_get_softc(i32 %6)
  store %struct.acpi_cmbat_softc* %7, %struct.acpi_cmbat_softc** %5, align 8
  %8 = load i32, i32* @cmbat, align 4
  %9 = call i32 @ACPI_SERIAL_BEGIN(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @acpi_BatteryIsPresent(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @acpi_cmbat_get_bst(i32 %14)
  %16 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.acpi_bst*, %struct.acpi_bst** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acpi_bst*, %struct.acpi_bst** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %29 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.acpi_bst*, %struct.acpi_bst** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %35 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.acpi_bst*, %struct.acpi_bst** %4, align 8
  %39 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %44

40:                                               ; preds = %2
  %41 = load i32, i32* @ACPI_BATT_STAT_NOT_PRESENT, align 4
  %42 = load %struct.acpi_bst*, %struct.acpi_bst** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_bst, %struct.acpi_bst* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %13
  %45 = load i32, i32* @cmbat, align 4
  %46 = call i32 @ACPI_SERIAL_END(i32 %45)
  ret i32 0
}

declare dso_local %struct.acpi_cmbat_softc* @device_get_softc(i32) #1

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local i64 @acpi_BatteryIsPresent(i32) #1

declare dso_local i32 @acpi_cmbat_get_bst(i32) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
