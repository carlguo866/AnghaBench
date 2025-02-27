; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_qdisc_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_qdisc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__, i32*, %struct.Qdisc_ops* }
%struct.TYPE_2__ = type { i64 }
%struct.Qdisc_ops = type { i32 (%struct.Qdisc.0*)* }
%struct.Qdisc.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdisc_reset(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.Qdisc_ops*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %4 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %5 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %4, i32 0, i32 2
  %6 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %5, align 8
  store %struct.Qdisc_ops* %6, %struct.Qdisc_ops** %3, align 8
  %7 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %8 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %7, i32 0, i32 0
  %9 = load i32 (%struct.Qdisc.0*)*, i32 (%struct.Qdisc.0*)** %8, align 8
  %10 = icmp ne i32 (%struct.Qdisc.0*)* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %13 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %12, i32 0, i32 0
  %14 = load i32 (%struct.Qdisc.0*)*, i32 (%struct.Qdisc.0*)** %13, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %16 = bitcast %struct.Qdisc* %15 to %struct.Qdisc.0*
  %17 = call i32 %14(%struct.Qdisc.0* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %20 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %25 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree_skb(i32* %26)
  %28 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %29 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %31 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
