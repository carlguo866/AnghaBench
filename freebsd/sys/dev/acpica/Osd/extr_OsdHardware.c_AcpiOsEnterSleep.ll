; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdHardware.c_AcpiOsEnterSleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdHardware.c_AcpiOsEnterSleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_susp_bounce = common dso_local global i64 0, align 8
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiOsEnterSleep(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* @acpi_susp_bounce, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %11, i32* %4, align 4
  br label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
