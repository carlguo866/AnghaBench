; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_symbol__parent_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_symbol__parent_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.symbol = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HIST_FILTER__PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*)* @symbol__parent_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbol__parent_filter(%struct.symbol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.symbol*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.symbol*, %struct.symbol** %3, align 8
  %8 = icmp eq %struct.symbol* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @HIST_FILTER__PARENT, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %2, align 4
  br label %13

12:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
