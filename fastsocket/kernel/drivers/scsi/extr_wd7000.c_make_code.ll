; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd7000.c_make_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_wd7000.c_make_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DID_ERROR = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@DID_TIME_OUT = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DID_BAD_INTR = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @make_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_code(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 255
  switch i32 %7, label %26 [
    i32 0, label %8
    i32 1, label %10
    i32 2, label %12
    i32 4, label %14
    i32 5, label %16
    i32 6, label %18
    i32 80, label %20
    i32 81, label %20
    i32 82, label %22
    i32 83, label %24
    i32 84, label %24
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @DID_ERROR, align 4
  store i32 %9, i32* %3, align 4
  br label %28

10:                                               ; preds = %2
  %11 = load i32, i32* @DID_OK, align 4
  store i32 %11, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* @DID_OK, align 4
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load i32, i32* @DID_TIME_OUT, align 4
  store i32 %15, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @DID_RESET, align 4
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load i32, i32* @DID_BAD_TARGET, align 4
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %2, %2
  %21 = load i32, i32* @DID_BAD_INTR, align 4
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @DID_ABORT, align 4
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %2, %2
  %25 = load i32, i32* @DID_RESET, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @DID_ERROR, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %24, %22, %20, %18, %16, %14, %12, %10, %8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %29, %31
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
