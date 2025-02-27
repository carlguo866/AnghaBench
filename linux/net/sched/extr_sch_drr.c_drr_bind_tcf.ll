; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_drr.c_drr_bind_tcf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_drr.c_drr_bind_tcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.drr_class = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.Qdisc*, i64, i32)* @drr_bind_tcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @drr_bind_tcf(%struct.Qdisc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drr_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.drr_class* @drr_find_class(%struct.Qdisc* %8, i32 %9)
  store %struct.drr_class* %10, %struct.drr_class** %7, align 8
  %11 = load %struct.drr_class*, %struct.drr_class** %7, align 8
  %12 = icmp ne %struct.drr_class* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.drr_class*, %struct.drr_class** %7, align 8
  %15 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %13, %3
  %19 = load %struct.drr_class*, %struct.drr_class** %7, align 8
  %20 = ptrtoint %struct.drr_class* %19 to i64
  ret i64 %20
}

declare dso_local %struct.drr_class* @drr_find_class(%struct.Qdisc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
