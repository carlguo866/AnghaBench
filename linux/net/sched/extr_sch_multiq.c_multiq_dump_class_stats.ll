; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.multiq_sched_data = type { %struct.Qdisc** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @multiq_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiq_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.multiq_sched_data*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.multiq_sched_data* %11, %struct.multiq_sched_data** %8, align 8
  %12 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %13 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %12, i32 0, i32 0
  %14 = load %struct.Qdisc**, %struct.Qdisc*** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = sub i64 %15, 1
  %17 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %14, i64 %16
  %18 = load %struct.Qdisc*, %struct.Qdisc** %17, align 8
  store %struct.Qdisc* %18, %struct.Qdisc** %9, align 8
  %19 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %20 = call i32 @qdisc_root_sleeping_running(%struct.Qdisc* %19)
  %21 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 0
  %24 = call i64 @gnet_stats_copy_basic(i32 %20, %struct.gnet_dump* %21, i32* null, i32* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %28 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %29 = call i64 @qdisc_qstats_copy(%struct.gnet_dump* %27, %struct.Qdisc* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %3
  store i32 -1, i32* %4, align 4
  br label %33

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @gnet_stats_copy_basic(i32, %struct.gnet_dump*, i32*, i32*) #1

declare dso_local i32 @qdisc_root_sleeping_running(%struct.Qdisc*) #1

declare dso_local i64 @qdisc_qstats_copy(%struct.gnet_dump*, %struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
