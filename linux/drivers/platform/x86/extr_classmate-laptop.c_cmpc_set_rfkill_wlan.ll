; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_set_rfkill_wlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_set_rfkill_wlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.TYPE_2__ = type { i32 }

@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"GWRI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @cmpc_set_rfkill_wlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmpc_set_rfkill_wlan(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [2 x %union.acpi_object], align 16
  %6 = alloca %struct.acpi_object_list, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %9 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %10 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %5, i64 0, i64 0
  %11 = bitcast %union.acpi_object* %10 to i8**
  store i8* %9, i8** %11, align 16
  %12 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %5, i64 0, i64 0
  %13 = bitcast %union.acpi_object* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 193, i32* %14, align 16
  %15 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %16 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %5, i64 0, i64 1
  %17 = bitcast %union.acpi_object* %16 to i8**
  store i8* %15, i8** %17, align 8
  %18 = load i64, i64* %4, align 8
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %5, i64 0, i64 1
  %21 = bitcast %union.acpi_object* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %6, i32 0, i32 0
  store i32 2, i32* %23, align 8
  %24 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %5, i64 0, i64 0
  %25 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %6, i32 0, i32 1
  store %union.acpi_object* %24, %union.acpi_object** %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @acpi_evaluate_integer(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %6, i64* %8)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, %struct.acpi_object_list*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
