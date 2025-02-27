; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_enqueue_soft.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_enqueue_soft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cbs_sched_data = type { i64, i32, %struct.Qdisc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @cbs_enqueue_soft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_enqueue_soft(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca %struct.cbs_sched_data*, align 8
  %8 = alloca %struct.Qdisc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %5, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %6, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %10 = call %struct.cbs_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.cbs_sched_data* %10, %struct.cbs_sched_data** %7, align 8
  %11 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %7, align 8
  %12 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %11, i32 0, i32 2
  %13 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  store %struct.Qdisc* %13, %struct.Qdisc** %8, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %15 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %7, align 8
  %21 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %7, align 8
  %26 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = call i32 (...) @ktime_get_ns()
  %28 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %7, align 8
  %29 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %19, %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %33 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %35 = call i32 @cbs_child_enqueue(%struct.sk_buff* %31, %struct.Qdisc* %32, %struct.Qdisc* %33, %struct.sk_buff** %34)
  ret i32 %35
}

declare dso_local %struct.cbs_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @cbs_child_enqueue(%struct.sk_buff*, %struct.Qdisc*, %struct.Qdisc*, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
