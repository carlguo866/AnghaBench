; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_toshiba.c_acpi_toshiba_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_toshiba.c_acpi_toshiba_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_toshiba_softc = type { i32 }

@toshiba = common dso_local global i32 0, align 4
@HCI_GET = common dso_local global i32 0, align 4
@HCI_REG_SYSTEM_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"TOSHIBA\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown notify: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @acpi_toshiba_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_toshiba_notify(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_toshiba_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.acpi_toshiba_softc*
  store %struct.acpi_toshiba_softc* %10, %struct.acpi_toshiba_softc** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 128
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load i32, i32* @toshiba, align 4
  %15 = call i32 @ACPI_SERIAL_BEGIN(i32 %14)
  br label %16

16:                                               ; preds = %22, %13
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @HCI_GET, align 4
  %19 = load i32, i32* @HCI_REG_SYSTEM_EVENT, align 4
  %20 = call i64 @hci_call(i32 %17, i32 %18, i32 %19, i32* %8)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.acpi_toshiba_softc*, %struct.acpi_toshiba_softc** %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @hci_key_action(%struct.acpi_toshiba_softc* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @acpi_UserNotify(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  br label %16

30:                                               ; preds = %16
  %31 = load i32, i32* @toshiba, align 4
  %32 = call i32 @ACPI_SERIAL_END(i32 %31)
  br label %39

33:                                               ; preds = %3
  %34 = load %struct.acpi_toshiba_softc*, %struct.acpi_toshiba_softc** %7, align 8
  %35 = getelementptr inbounds %struct.acpi_toshiba_softc, %struct.acpi_toshiba_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local i64 @hci_call(i32, i32, i32, i32*) #1

declare dso_local i32 @hci_key_action(%struct.acpi_toshiba_softc*, i32, i32) #1

declare dso_local i32 @acpi_UserNotify(i8*, i32, i32) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
