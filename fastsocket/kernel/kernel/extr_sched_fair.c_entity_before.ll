; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_entity_before.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_entity_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_entity = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sched_entity*, %struct.sched_entity*)* @entity_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entity_before(%struct.sched_entity* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.sched_entity*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  store %struct.sched_entity* %0, %struct.sched_entity** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %5 = load %struct.sched_entity*, %struct.sched_entity** %3, align 8
  %6 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %9 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  %12 = icmp slt i64 %11, 0
  %13 = zext i1 %12 to i32
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
