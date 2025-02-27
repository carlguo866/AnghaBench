; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utexcep.c_acpi_format_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utexcep.c_acpi_format_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_exception_info = type { i8* }

@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unknown exception code: 0x%8.8X\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"UNKNOWN_STATUS_CODE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_format_exception(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_exception_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.acpi_exception_info* @acpi_ut_validate_exception(i32 %6)
  store %struct.acpi_exception_info* %7, %struct.acpi_exception_info** %4, align 8
  %8 = load %struct.acpi_exception_info*, %struct.acpi_exception_info** %4, align 8
  %9 = icmp ne %struct.acpi_exception_info* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @AE_INFO, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ACPI_ERROR(i32 %12)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.acpi_exception_info*, %struct.acpi_exception_info** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_exception_info, %struct.acpi_exception_info* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %2, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %struct.acpi_exception_info* @acpi_ut_validate_exception(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
