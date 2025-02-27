; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_host_set_special_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_host_set_special_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_PRIV_NULL = common dso_local global i64 0, align 8
@HOST_MAX_SPECIAL_KERNEL_PORT = common dso_local global i32 0, align 4
@HOST_MAX_SPECIAL_PORT = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_NO_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_set_special_port(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @HOST_PRIV_NULL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @HOST_MAX_SPECIAL_KERNEL_PORT, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @HOST_MAX_SPECIAL_PORT, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %11, %3
  %20 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @kernel_set_special_port(i64 %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %19
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @kernel_set_special_port(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
