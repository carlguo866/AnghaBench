; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_keys_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_keys_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.toshiba_acpi_dev* }
%struct.toshiba_acpi_dev = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"hotkey_ready:            %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"hotkey:                  0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @keys_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keys_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.toshiba_acpi_dev*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %7, align 8
  store %struct.toshiba_acpi_dev* %8, %struct.toshiba_acpi_dev** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %5, align 8
  %11 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %5, align 8
  %16 = getelementptr inbounds %struct.toshiba_acpi_dev, %struct.toshiba_acpi_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
