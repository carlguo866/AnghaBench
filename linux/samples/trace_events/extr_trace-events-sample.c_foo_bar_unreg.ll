; ModuleID = '/home/carl/AnghaBench/linux/samples/trace_events/extr_trace-events-sample.c_foo_bar_unreg.c'
source_filename = "/home/carl/AnghaBench/linux/samples/trace_events/extr_trace-events-sample.c_foo_bar_unreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thread_mutex = common dso_local global i32 0, align 4
@simple_thread_cnt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Killing thread for foo_bar_fn\0A\00", align 1
@simple_tsk_fn = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo_bar_unreg() #0 {
  %1 = call i32 @mutex_lock(i32* @thread_mutex)
  %2 = load i64, i64* @simple_thread_cnt, align 8
  %3 = add nsw i64 %2, -1
  store i64 %3, i64* @simple_thread_cnt, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %14

6:                                                ; preds = %0
  %7 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = load i32*, i32** @simple_tsk_fn, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32*, i32** @simple_tsk_fn, align 8
  %12 = call i32 @kthread_stop(i32* %11)
  br label %13

13:                                               ; preds = %10, %6
  store i32* null, i32** @simple_tsk_fn, align 8
  br label %14

14:                                               ; preds = %13, %5
  %15 = call i32 @mutex_unlock(i32* @thread_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
