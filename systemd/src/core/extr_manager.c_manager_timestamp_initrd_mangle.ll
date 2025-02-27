; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_timestamp_initrd_mangle.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_timestamp_initrd_mangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MANAGER_TIMESTAMP_SECURITY_START = common dso_local global i64 0, align 8
@MANAGER_TIMESTAMP_UNITS_LOAD_FINISH = common dso_local global i64 0, align 8
@MANAGER_TIMESTAMP_INITRD_SECURITY_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @manager_timestamp_initrd_mangle(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = call i64 (...) @in_initrd()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @MANAGER_TIMESTAMP_SECURITY_START, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @MANAGER_TIMESTAMP_UNITS_LOAD_FINISH, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @MANAGER_TIMESTAMP_SECURITY_START, align 8
  %17 = sub nsw i64 %15, %16
  %18 = load i64, i64* @MANAGER_TIMESTAMP_INITRD_SECURITY_START, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %2, align 8
  br label %22

20:                                               ; preds = %10, %6, %1
  %21 = load i64, i64* %3, align 8
  store i64 %21, i64* %2, align 8
  br label %22

22:                                               ; preds = %20, %14
  %23 = load i64, i64* %2, align 8
  ret i64 %23
}

declare dso_local i64 @in_initrd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
