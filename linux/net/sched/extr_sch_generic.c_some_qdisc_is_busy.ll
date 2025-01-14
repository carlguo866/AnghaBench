; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_some_qdisc_is_busy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_some_qdisc_is_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_queue = type { %struct.Qdisc* }
%struct.Qdisc = type { i32 }

@__QDISC_STATE_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @some_qdisc_is_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @some_qdisc_is_busy(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %16, i32 %17)
  store %struct.netdev_queue* %18, %struct.netdev_queue** %5, align 8
  %19 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %20 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %19, i32 0, i32 0
  %21 = load %struct.Qdisc*, %struct.Qdisc** %20, align 8
  store %struct.Qdisc* %21, %struct.Qdisc** %7, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %23 = call i32* @qdisc_lock(%struct.Qdisc* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %27 = call i64 @qdisc_is_running(%struct.Qdisc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %15
  %30 = load i32, i32* @__QDISC_STATE_SCHED, align 4
  %31 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %32 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %31, i32 0, i32 0
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %29, %15
  %36 = phi i1 [ true, %15 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @spin_unlock_bh(i32* %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %48

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %9

47:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32* @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @qdisc_is_running(%struct.Qdisc*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
