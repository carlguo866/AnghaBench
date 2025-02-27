; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_evlist__mmap_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_evlist.c_evlist__mmap_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT_MAX = common dso_local global i64 0, align 8
@page_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @evlist__mmap_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @UINT_MAX, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i64 (...) @perf_event_mlock_kb_in_pages()
  store i64 %8, i64* %3, align 8
  br label %15

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @is_power_of_2(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i64 0, i64* %2, align 8
  br label %20

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %7
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  %18 = load i64, i64* @page_size, align 8
  %19 = mul i64 %17, %18
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %15, %13
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

declare dso_local i64 @perf_event_mlock_kb_in_pages(...) #1

declare dso_local i32 @is_power_of_2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
