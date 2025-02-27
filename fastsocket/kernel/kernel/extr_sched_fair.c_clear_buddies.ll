; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_clear_buddies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_fair.c_clear_buddies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { %struct.sched_entity*, %struct.sched_entity*, %struct.sched_entity* }
%struct.sched_entity = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*)* @clear_buddies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_buddies(%struct.cfs_rq* %0, %struct.sched_entity* %1) #0 {
  %3 = alloca %struct.cfs_rq*, align 8
  %4 = alloca %struct.sched_entity*, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %3, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %4, align 8
  %5 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %6 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %5, i32 0, i32 2
  %7 = load %struct.sched_entity*, %struct.sched_entity** %6, align 8
  %8 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %9 = icmp eq %struct.sched_entity* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %12 = call i32 @__clear_buddies_last(%struct.sched_entity* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %15 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %14, i32 0, i32 1
  %16 = load %struct.sched_entity*, %struct.sched_entity** %15, align 8
  %17 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %18 = icmp eq %struct.sched_entity* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %21 = call i32 @__clear_buddies_next(%struct.sched_entity* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.cfs_rq*, %struct.cfs_rq** %3, align 8
  %24 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %23, i32 0, i32 0
  %25 = load %struct.sched_entity*, %struct.sched_entity** %24, align 8
  %26 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %27 = icmp eq %struct.sched_entity* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.sched_entity*, %struct.sched_entity** %4, align 8
  %30 = call i32 @__clear_buddies_skip(%struct.sched_entity* %29)
  br label %31

31:                                               ; preds = %28, %22
  ret void
}

declare dso_local i32 @__clear_buddies_last(%struct.sched_entity*) #1

declare dso_local i32 @__clear_buddies_next(%struct.sched_entity*) #1

declare dso_local i32 @__clear_buddies_skip(%struct.sched_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
