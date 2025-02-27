; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_dsmark.c_dsmark_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.dsmark_qdisc_data = type { i32*, i64* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64)* @dsmark_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsmark_delete(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dsmark_qdisc_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %8 = call %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.dsmark_qdisc_data* %8, %struct.dsmark_qdisc_data** %6, align 8
  %9 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @dsmark_valid_index(%struct.dsmark_qdisc_data* %9, i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %6, align 8
  %18 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 255, i32* %22, align 4
  %23 = load %struct.dsmark_qdisc_data*, %struct.dsmark_qdisc_data** %6, align 8
  %24 = getelementptr inbounds %struct.dsmark_qdisc_data, %struct.dsmark_qdisc_data* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 0, i64* %28, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %16, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.dsmark_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @dsmark_valid_index(%struct.dsmark_qdisc_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
