; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_continuous_agg.c_ts_continuous_agg_drop_view_callback.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_continuous_agg.c_ts_continuous_agg_drop_view_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unknown continuous aggregate view type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_continuous_agg_drop_view_callback(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @ts_continuous_agg_view_type(i32* %9, i8* %10, i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %20 [
    i32 128, label %14
    i32 129, label %17
    i32 130, label %17
  ]

14:                                               ; preds = %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = call i32 @drop_continuous_agg(%struct.TYPE_5__* %15, i32 0)
  br label %23

17:                                               ; preds = %3, %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = call i32 @drop_internal_view(%struct.TYPE_5__* %18)
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17, %14
  ret void
}

declare dso_local i32 @ts_continuous_agg_view_type(i32*, i8*, i8*) #1

declare dso_local i32 @drop_continuous_agg(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @drop_internal_view(%struct.TYPE_5__*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
