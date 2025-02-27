; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_mrb_debug_enable_break.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_mrb_debug_enable_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MRB_DEBUG_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@MRB_DEBUG_BREAK_INVALID_NO = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MRB_DEBUG_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mrb_debug_enable_break(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %3
  %15 = load i64, i64* @MRB_DEBUG_INVALID_ARGUMENT, align 8
  store i64 %15, i64* %4, align 8
  br label %34

16:                                               ; preds = %11
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @get_break_index(%struct.TYPE_6__* %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @MRB_DEBUG_BREAK_INVALID_NO, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i64, i64* @MRB_DEBUG_BREAK_INVALID_NO, align 8
  store i64 %24, i64* %4, align 8
  br label %34

25:                                               ; preds = %16
  %26 = load i32, i32* @TRUE, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %26, i32* %32, align 4
  %33 = load i64, i64* @MRB_DEBUG_OK, align 8
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %25, %23, %14
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local i64 @get_break_index(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
