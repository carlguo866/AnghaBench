; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_fetch_lookup_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.h_tl_fetch_lookup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i32)* }

@TL_IN_METHODS = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tl_fetch_lookup_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tl_fetch_lookup_int() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 @tl_fetch_check(i32 4)
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %12

6:                                                ; preds = %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TL_IN_METHODS, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32*, i32)*, i32 (i32*, i32)** %8, align 8
  %10 = call i32 %9(i32* %2, i32 4)
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %6, %5
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i64 @tl_fetch_check(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
