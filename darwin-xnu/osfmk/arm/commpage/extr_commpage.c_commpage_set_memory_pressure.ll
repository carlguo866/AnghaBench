; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/commpage/extr_commpage.c_commpage_set_memory_pressure.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/commpage/extr_commpage.c_commpage_set_memory_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commPagePtr = common dso_local global i64 0, align 8
@_COMM_PAGE_MEMORY_PRESSURE = common dso_local global i64 0, align 8
@_COMM_PAGE_RW_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commpage_set_memory_pressure(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @commPagePtr, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %12

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i64, i64* @_COMM_PAGE_MEMORY_PRESSURE, align 8
  %9 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %10 = add nsw i64 %8, %9
  %11 = inttoptr i64 %10 to i32*
  store i32 %7, i32* %11, align 4
  br label %12

12:                                               ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
