; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_sndopensl.c_pop_index.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_sndopensl.c_pop_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@index_queue = common dso_local global i32* null, align 8
@queue_head = common dso_local global i64 0, align 8
@MAX_QUEUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pop_index() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @index_queue, align 8
  %3 = load i64, i64* @queue_head, align 8
  %4 = getelementptr inbounds i32, i32* %2, i64 %3
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %1, align 4
  %6 = load i64, i64* @queue_head, align 8
  %7 = add i64 %6, 1
  store i64 %7, i64* @queue_head, align 8
  %8 = load i64, i64* @queue_head, align 8
  %9 = load i64, i64* @MAX_QUEUE, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i64 0, i64* @queue_head, align 8
  br label %12

12:                                               ; preds = %11, %0
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
