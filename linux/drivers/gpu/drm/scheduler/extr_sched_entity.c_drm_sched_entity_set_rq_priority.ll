; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_set_rq_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/scheduler/extr_sched_entity.c_drm_sched_entity_set_rq_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sched_rq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_sched_rq* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_sched_rq**, i32)* @drm_sched_entity_set_rq_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_sched_entity_set_rq_priority(%struct.drm_sched_rq** %0, i32 %1) #0 {
  %3 = alloca %struct.drm_sched_rq**, align 8
  %4 = alloca i32, align 4
  store %struct.drm_sched_rq** %0, %struct.drm_sched_rq*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.drm_sched_rq**, %struct.drm_sched_rq*** %3, align 8
  %6 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %5, align 8
  %7 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %10, i64 %12
  %14 = load %struct.drm_sched_rq**, %struct.drm_sched_rq*** %3, align 8
  store %struct.drm_sched_rq* %13, %struct.drm_sched_rq** %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
