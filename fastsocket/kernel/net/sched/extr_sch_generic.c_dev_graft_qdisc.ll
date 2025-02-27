; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_dev_graft_qdisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_dev_graft_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netdev_queue = type { i32, %struct.Qdisc* }

@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue* %0, %struct.Qdisc* %1) #0 {
  %3 = alloca %struct.netdev_queue*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i32*, align 8
  store %struct.netdev_queue* %0, %struct.netdev_queue** %3, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %4, align 8
  %7 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %8 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %7, i32 0, i32 1
  %9 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  store %struct.Qdisc* %9, %struct.Qdisc** %5, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call i32* @qdisc_lock(%struct.Qdisc* %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %15 = icmp ne %struct.Qdisc* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = call i32 @atomic_read(i32* %18)
  %20 = icmp sle i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %23 = call i32 @qdisc_reset(%struct.Qdisc* %22)
  br label %24

24:                                               ; preds = %21, %16, %2
  %25 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %26 = icmp eq %struct.Qdisc* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %4, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %30 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %31 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %30, i32 0, i32 1
  store %struct.Qdisc* %29, %struct.Qdisc** %31, align 8
  %32 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %33 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @rcu_assign_pointer(i32 %34, %struct.Qdisc* @noop_qdisc)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @spin_unlock_bh(i32* %36)
  %38 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  ret %struct.Qdisc* %38
}

declare dso_local i32* @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @qdisc_reset(%struct.Qdisc*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.Qdisc*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
