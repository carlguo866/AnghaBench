; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_index-user-names.c_percent.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_index-user-names.c_percent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @percent(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp sle i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp sle i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %23

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 100, i32* %3, align 4
  br label %23

17:                                               ; preds = %12
  %18 = load i64, i64* %4, align 8
  %19 = mul nsw i64 %18, 100
  %20 = load i64, i64* %5, align 8
  %21 = sdiv i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %16, %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
