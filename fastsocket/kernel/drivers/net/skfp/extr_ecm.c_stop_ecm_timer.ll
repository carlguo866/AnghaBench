; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_ecm.c_stop_ecm_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_ecm.c_stop_ecm_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @stop_ecm_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_ecm_timer(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %4 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %11 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %12 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @smt_timer_stop(%struct.s_smc* %10, %struct.TYPE_4__* %13)
  br label %15

15:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @smt_timer_stop(%struct.s_smc*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
