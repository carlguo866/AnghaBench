; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_get_time.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@eq_n = common dso_local global i64 0, align 8
@eq = common dso_local global %struct.TYPE_2__** null, align 8
@eq_l = common dso_local global i64 0, align 8
@now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_time() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @eq_n, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @eq, align 8
  %6 = load i64, i64* @eq_l, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %5, i64 %6
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %1, align 4
  br label %15

13:                                               ; preds = %0
  %14 = load i32, i32* @now, align 4
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %13, %4
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
