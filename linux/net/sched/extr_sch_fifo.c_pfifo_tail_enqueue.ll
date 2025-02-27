; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fifo.c_pfifo_tail_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fifo.c_pfifo_tail_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.sk_buff**)* @pfifo_tail_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfifo_tail_enqueue(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.sk_buff** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %10 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %14 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %23 = call i32 @qdisc_enqueue_tail(%struct.sk_buff* %21, %struct.Qdisc* %22)
  store i32 %23, i32* %4, align 4
  br label %48

24:                                               ; preds = %3
  %25 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %26 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %31 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %30, i32 0, i32 2
  %32 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %33 = call i32 @__qdisc_queue_drop_head(%struct.Qdisc* %29, %struct.TYPE_4__* %31, %struct.sk_buff** %32)
  %34 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %35 = call i32 @qdisc_qstats_drop(%struct.Qdisc* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %38 = call i32 @qdisc_enqueue_tail(%struct.sk_buff* %36, %struct.Qdisc* %37)
  %39 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %42 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub i32 %40, %44
  %46 = call i32 @qdisc_tree_reduce_backlog(%struct.Qdisc* %39, i32 0, i32 %45)
  %47 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %24, %20
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @qdisc_enqueue_tail(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i32 @__qdisc_queue_drop_head(%struct.Qdisc*, %struct.TYPE_4__*, %struct.sk_buff**) #1

declare dso_local i32 @qdisc_qstats_drop(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_tree_reduce_backlog(%struct.Qdisc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
