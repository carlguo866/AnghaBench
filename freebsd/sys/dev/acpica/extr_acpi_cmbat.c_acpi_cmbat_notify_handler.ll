; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_notify_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cmbat_softc = type { i32 }

@OSL_NOTIFY_HANDLER = common dso_local global i32 0, align 4
@acpi_cmbat_get_bif_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"CMBAT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @acpi_cmbat_notify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_cmbat_notify_handler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_cmbat_softc*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call %struct.acpi_cmbat_softc* @device_get_softc(i64 %11)
  store %struct.acpi_cmbat_softc* %12, %struct.acpi_cmbat_softc** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %23 [
    i32 128, label %14
    i32 130, label %14
    i32 129, label %18
    i32 131, label %18
  ]

14:                                               ; preds = %3, %3
  %15 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %7, align 8
  %16 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %15, i32 0, i32 0
  %17 = call i32 @timespecclear(i32* %16)
  br label %23

18:                                               ; preds = %3, %3
  %19 = load i32, i32* @OSL_NOTIFY_HANDLER, align 4
  %20 = load i32, i32* @acpi_cmbat_get_bif_task, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @AcpiOsExecute(i32 %19, i32 %20, i64 %21)
  br label %23

23:                                               ; preds = %3, %18, %14
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @acpi_UserNotify(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  ret void
}

declare dso_local %struct.acpi_cmbat_softc* @device_get_softc(i64) #1

declare dso_local i32 @timespecclear(i32*) #1

declare dso_local i32 @AcpiOsExecute(i32, i32, i64) #1

declare dso_local i32 @acpi_UserNotify(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
