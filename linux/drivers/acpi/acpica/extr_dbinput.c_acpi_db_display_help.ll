; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbinput.c_acpi_db_display_help.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbinput.c_acpi_db_display_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_db_command_help = type { i32, i64 }

@acpi_gbl_db_command_help = common dso_local global %struct.acpi_db_command_help* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"\0ASummary of AML Debugger Commands\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%-38s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acpi_db_display_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_db_display_help(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_db_command_help*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.acpi_db_command_help*, %struct.acpi_db_command_help** @acpi_gbl_db_command_help, align 8
  store %struct.acpi_db_command_help* %4, %struct.acpi_db_command_help** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %14, %7
  %10 = load %struct.acpi_db_command_help*, %struct.acpi_db_command_help** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_db_command_help, %struct.acpi_db_command_help* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.acpi_db_command_help*, %struct.acpi_db_command_help** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_db_command_help, %struct.acpi_db_command_help* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.acpi_db_command_help*, %struct.acpi_db_command_help** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_db_command_help, %struct.acpi_db_command_help* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %17, i32 %20)
  %22 = load %struct.acpi_db_command_help*, %struct.acpi_db_command_help** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_db_command_help, %struct.acpi_db_command_help* %22, i32 1
  store %struct.acpi_db_command_help* %23, %struct.acpi_db_command_help** %3, align 8
  br label %9

24:                                               ; preds = %9
  %25 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %30

26:                                               ; preds = %1
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @acpi_db_display_command_info(i8* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %24
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @acpi_db_display_command_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
