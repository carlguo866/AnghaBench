; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_dbg.c_acpi_aml_wait_command_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_dbg.c_acpi_aml_wait_command_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"\0A%1c \00", align 1
@ACPI_DEBUGGER_EXECUTE_PROMPT = common dso_local global i32 0, align 4
@ACPI_DEBUGGER_COMMAND_PROMPT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @acpi_aml_wait_command_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_aml_wait_command_ready(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @ACPI_DEBUGGER_EXECUTE_PROMPT, align 4
  %13 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ACPI_DEBUGGER_COMMAND_PROMPT, align 4
  %16 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @acpi_os_get_line(i8* %18, i64 %19, i32* null)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @ACPI_FAILURE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @acpi_os_printf(i8*, i32) #1

declare dso_local i32 @acpi_os_get_line(i8*, i64, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
