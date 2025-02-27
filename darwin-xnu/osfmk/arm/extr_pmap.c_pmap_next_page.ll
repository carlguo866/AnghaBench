; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_next_page.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_next_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@first_avail = common dso_local global i64 0, align 8
@avail_end = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_next_page(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %4 = load i64, i64* @first_avail, align 8
  %5 = load i64, i64* @avail_end, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i64, i64* @first_avail, align 8
  %9 = call i64 @atop(i64 %8)
  %10 = load i64*, i64** %3, align 8
  store i64 %9, i64* %10, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = load i64, i64* @first_avail, align 8
  %13 = add nsw i64 %12, %11
  store i64 %13, i64* @first_avail, align 8
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %7
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @atop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
