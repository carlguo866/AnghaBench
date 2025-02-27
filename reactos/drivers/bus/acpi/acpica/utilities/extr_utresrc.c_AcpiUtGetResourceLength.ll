; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utresrc.c_AcpiUtGetResourceLength.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utresrc.c_AcpiUtGetResourceLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_RESOURCE_NAME_LARGE = common dso_local global i32 0, align 4
@UINT8 = common dso_local global i32 0, align 4
@ACPI_RESOURCE_NAME_SMALL_LENGTH_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiUtGetResourceLength(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @ACPI_GET8(i8* %5)
  %7 = load i32, i32* @ACPI_RESOURCE_NAME_LARGE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @UINT8, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @ACPI_ADD_PTR(i32 %11, i8* %12, i32 1)
  %14 = call i32 @ACPI_MOVE_16_TO_16(i64* %3, i32 %13)
  br label %21

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @ACPI_GET8(i8* %16)
  %18 = load i32, i32* @ACPI_RESOURCE_NAME_SMALL_LENGTH_MASK, align 4
  %19 = and i32 %17, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %15, %10
  %22 = load i64, i64* %3, align 8
  ret i64 %22
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @ACPI_GET8(i8*) #1

declare dso_local i32 @ACPI_MOVE_16_TO_16(i64*, i32) #1

declare dso_local i32 @ACPI_ADD_PTR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
