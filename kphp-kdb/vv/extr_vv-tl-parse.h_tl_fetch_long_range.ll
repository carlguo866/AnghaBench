; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_fetch_long_range.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_fetch_long_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_ERROR_VALUE_NOT_IN_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Expected int64 in range [%lld,%lld], %lld presented\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @tl_fetch_long_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tl_fetch_long_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i64 (...) @tl_fetch_long()
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @TL_ERROR_VALUE_NOT_IN_RANGE, align 4
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @tl_fetch_set_error_format(i32 %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17, i64 %18)
  br label %20

20:                                               ; preds = %14, %10
  %21 = load i64, i64* %5, align 8
  ret i64 %21
}

declare dso_local i64 @tl_fetch_long(...) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
