; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_wait.c_do_wait_intr_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_wait.c_do_wait_intr_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_wait_intr_irq(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = call i32 @list_empty(i32* %7)
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = call i32 @__add_wait_queue_entry_tail(%struct.TYPE_7__* %12, %struct.TYPE_8__* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %17 = call i32 @set_current_state(i32 %16)
  %18 = load i32, i32* @current, align 4
  %19 = call i64 @signal_pending(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ERESTARTSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %15
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock_irq(i32* %26)
  %28 = call i32 (...) @schedule()
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_irq(i32* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__add_wait_queue_entry_tail(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
