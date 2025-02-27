; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c___dequeue_rt_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_rt.c___dequeue_rt_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_rt_entity = type { i64, i32 }
%struct.rt_rq = type { %struct.rt_prio_array }
%struct.rt_prio_array = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_rt_entity*, i32)* @__dequeue_rt_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dequeue_rt_entity(%struct.sched_rt_entity* %0, i32 %1) #0 {
  %3 = alloca %struct.sched_rt_entity*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt_rq*, align 8
  %6 = alloca %struct.rt_prio_array*, align 8
  store %struct.sched_rt_entity* %0, %struct.sched_rt_entity** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %8 = call %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity* %7)
  store %struct.rt_rq* %8, %struct.rt_rq** %5, align 8
  %9 = load %struct.rt_rq*, %struct.rt_rq** %5, align 8
  %10 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %9, i32 0, i32 0
  store %struct.rt_prio_array* %10, %struct.rt_prio_array** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @move_entity(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %16 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  %22 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %23 = load %struct.rt_prio_array*, %struct.rt_prio_array** %6, align 8
  %24 = call i32 @__delist_rt_entity(%struct.sched_rt_entity* %22, %struct.rt_prio_array* %23)
  br label %25

25:                                               ; preds = %14, %2
  %26 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %27 = getelementptr inbounds %struct.sched_rt_entity, %struct.sched_rt_entity* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.sched_rt_entity*, %struct.sched_rt_entity** %3, align 8
  %29 = load %struct.rt_rq*, %struct.rt_rq** %5, align 8
  %30 = call i32 @dec_rt_tasks(%struct.sched_rt_entity* %28, %struct.rt_rq* %29)
  ret void
}

declare dso_local %struct.rt_rq* @rt_rq_of_se(%struct.sched_rt_entity*) #1

declare dso_local i64 @move_entity(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__delist_rt_entity(%struct.sched_rt_entity*, %struct.rt_prio_array*) #1

declare dso_local i32 @dec_rt_tasks(%struct.sched_rt_entity*, %struct.rt_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
