; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_acad.c_acpi_acad_get_acline.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_acad.c_acpi_acad_get_acline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_acad_softc = type { i32 }

@acpi_acad_devclass = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_acad_get_acline(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.acpi_acad_softc*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @acpi_acad_devclass, align 4
  %7 = call i32* @devclass_get_device(i32 %6, i32 0)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %21

12:                                               ; preds = %1
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.acpi_acad_softc* @device_get_softc(i32* %13)
  store %struct.acpi_acad_softc* %14, %struct.acpi_acad_softc** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @acpi_acad_get_status(i32* %15)
  %17 = load %struct.acpi_acad_softc*, %struct.acpi_acad_softc** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_acad_softc, %struct.acpi_acad_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %3, align 8
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %12, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local %struct.acpi_acad_softc* @device_get_softc(i32*) #1

declare dso_local i32 @acpi_acad_get_status(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
