; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_update_qset_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_t3_update_qset_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.qset_params = type { i32, i64 }

@napi_rx_handler = common dso_local global i32 0, align 4
@ofld_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_update_qset_coalesce(%struct.sge_qset* %0, %struct.qset_params* %1) #0 {
  %3 = alloca %struct.sge_qset*, align 8
  %4 = alloca %struct.qset_params*, align 8
  store %struct.sge_qset* %0, %struct.sge_qset** %3, align 8
  store %struct.qset_params* %1, %struct.qset_params** %4, align 8
  %5 = load %struct.qset_params*, %struct.qset_params** %4, align 8
  %6 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = mul nsw i32 %7, 10
  %9 = call i32 @max(i32 %8, i32 1)
  %10 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %11 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 8
  %13 = load %struct.qset_params*, %struct.qset_params** %4, align 8
  %14 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %17 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.qset_params*, %struct.qset_params** %4, align 8
  %20 = getelementptr inbounds %struct.qset_params, %struct.qset_params* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @napi_rx_handler, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @ofld_poll, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load %struct.sge_qset*, %struct.sge_qset** %3, align 8
  %30 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  ret void
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
