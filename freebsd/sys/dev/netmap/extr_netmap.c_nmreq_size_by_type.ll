; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nmreq_size_by_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_nmreq_size_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nmreq_size_by_type(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %16 [
    i32 137, label %5
    i32 138, label %6
    i32 134, label %7
    i32 132, label %8
    i32 131, label %9
    i32 139, label %10
    i32 140, label %10
    i32 130, label %11
    i32 133, label %12
    i32 135, label %12
    i32 142, label %12
    i32 128, label %13
    i32 129, label %13
    i32 141, label %14
    i32 136, label %15
  ]

5:                                                ; preds = %1
  store i64 4, i64* %2, align 8
  br label %17

6:                                                ; preds = %1
  store i64 4, i64* %2, align 8
  br label %17

7:                                                ; preds = %1
  store i64 4, i64* %2, align 8
  br label %17

8:                                                ; preds = %1
  store i64 4, i64* %2, align 8
  br label %17

9:                                                ; preds = %1
  store i64 4, i64* %2, align 8
  br label %17

10:                                               ; preds = %1, %1
  store i64 4, i64* %2, align 8
  br label %17

11:                                               ; preds = %1
  store i64 4, i64* %2, align 8
  br label %17

12:                                               ; preds = %1, %1, %1
  store i64 0, i64* %2, align 8
  br label %17

13:                                               ; preds = %1, %1
  store i64 4, i64* %2, align 8
  br label %17

14:                                               ; preds = %1
  store i64 4, i64* %2, align 8
  br label %17

15:                                               ; preds = %1
  store i64 4, i64* %2, align 8
  br label %17

16:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %18 = load i64, i64* %2, align 8
  ret i64 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
