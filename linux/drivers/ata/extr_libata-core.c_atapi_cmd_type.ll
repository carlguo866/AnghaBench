; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_atapi_cmd_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_atapi_cmd_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATAPI_READ = common dso_local global i32 0, align 4
@ATAPI_WRITE = common dso_local global i32 0, align 4
@ATAPI_READ_CD = common dso_local global i32 0, align 4
@atapi_passthru16 = common dso_local global i32 0, align 4
@ATAPI_PASS_THRU = common dso_local global i32 0, align 4
@ATAPI_MISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atapi_cmd_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %17 [
    i32 134, label %5
    i32 133, label %5
    i32 130, label %7
    i32 129, label %7
    i32 128, label %7
    i32 132, label %9
    i32 131, label %9
    i32 135, label %11
    i32 136, label %11
  ]

5:                                                ; preds = %1, %1
  %6 = load i32, i32* @ATAPI_READ, align 4
  store i32 %6, i32* %2, align 4
  br label %19

7:                                                ; preds = %1, %1, %1
  %8 = load i32, i32* @ATAPI_WRITE, align 4
  store i32 %8, i32* %2, align 4
  br label %19

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @ATAPI_READ_CD, align 4
  store i32 %10, i32* %2, align 4
  br label %19

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @atapi_passthru16, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @ATAPI_PASS_THRU, align 4
  store i32 %15, i32* %2, align 4
  br label %19

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %1, %16
  %18 = load i32, i32* @ATAPI_MISC, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %14, %9, %7, %5
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
