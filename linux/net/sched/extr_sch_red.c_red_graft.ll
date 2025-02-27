; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_graft.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.red_sched_data = type { i32 }

@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)* @red_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @red_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.Qdisc**, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.red_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %8, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %13 = call %struct.red_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.red_sched_data* %13, %struct.red_sched_data** %11, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %15 = icmp eq %struct.Qdisc* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %8, align 8
  br label %17

17:                                               ; preds = %16, %5
  %18 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %19 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %20 = load %struct.red_sched_data*, %struct.red_sched_data** %11, align 8
  %21 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %20, i32 0, i32 0
  %22 = call %struct.Qdisc* @qdisc_replace(%struct.Qdisc* %18, %struct.Qdisc* %19, i32* %21)
  %23 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* %22, %struct.Qdisc** %23, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %25 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %26 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %27 = load %struct.Qdisc*, %struct.Qdisc** %26, align 8
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %29 = call i32 @red_graft_offload(%struct.Qdisc* %24, %struct.Qdisc* %25, %struct.Qdisc* %27, %struct.netlink_ext_ack* %28)
  ret i32 0
}

declare dso_local %struct.red_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @qdisc_replace(%struct.Qdisc*, %struct.Qdisc*, i32*) #1

declare dso_local i32 @red_graft_offload(%struct.Qdisc*, %struct.Qdisc*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
