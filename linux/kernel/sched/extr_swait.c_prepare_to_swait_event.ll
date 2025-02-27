; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_swait.c_prepare_to_swait_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_swait.c_prepare_to_swait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swait_queue_head = type { i32 }
%struct.swait_queue = type { i32 }

@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @prepare_to_swait_event(%struct.swait_queue_head* %0, %struct.swait_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.swait_queue_head*, align 8
  %5 = alloca %struct.swait_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.swait_queue_head* %0, %struct.swait_queue_head** %4, align 8
  store %struct.swait_queue* %1, %struct.swait_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.swait_queue_head*, %struct.swait_queue_head** %4, align 8
  %10 = getelementptr inbounds %struct.swait_queue_head, %struct.swait_queue_head* %9, i32 0, i32 0
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @current, align 4
  %15 = call i64 @signal_pending_state(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.swait_queue*, %struct.swait_queue** %5, align 8
  %19 = getelementptr inbounds %struct.swait_queue, %struct.swait_queue* %18, i32 0, i32 0
  %20 = call i32 @list_del_init(i32* %19)
  %21 = load i64, i64* @ERESTARTSYS, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %8, align 8
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.swait_queue_head*, %struct.swait_queue_head** %4, align 8
  %25 = load %struct.swait_queue*, %struct.swait_queue** %5, align 8
  %26 = call i32 @__prepare_to_swait(%struct.swait_queue_head* %24, %struct.swait_queue* %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @set_current_state(i32 %27)
  br label %29

29:                                               ; preds = %23, %17
  %30 = load %struct.swait_queue_head*, %struct.swait_queue_head** %4, align 8
  %31 = getelementptr inbounds %struct.swait_queue_head, %struct.swait_queue_head* %30, i32 0, i32 0
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @raw_spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i64, i64* %8, align 8
  ret i64 %34
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @signal_pending_state(i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @__prepare_to_swait(%struct.swait_queue_head*, %struct.swait_queue*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
