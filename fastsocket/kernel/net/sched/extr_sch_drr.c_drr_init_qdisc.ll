; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_init_qdisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_init_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.drr_sched = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @drr_init_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drr_init_qdisc(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.drr_sched*, align 8
  %7 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.drr_sched* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.drr_sched* %9, %struct.drr_sched** %6, align 8
  %10 = load %struct.drr_sched*, %struct.drr_sched** %6, align 8
  %11 = getelementptr inbounds %struct.drr_sched, %struct.drr_sched* %10, i32 0, i32 1
  %12 = call i32 @qdisc_class_hash_init(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.drr_sched*, %struct.drr_sched** %6, align 8
  %19 = getelementptr inbounds %struct.drr_sched, %struct.drr_sched* %18, i32 0, i32 0
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %15
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.drr_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_class_hash_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
