; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_qdisc_is_red.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_qdisc_is_red.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_qdisc = type { i64 }

@NFP_QDISC_RED = common dso_local global i64 0, align 8
@NFP_QDISC_GRED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_qdisc*)* @nfp_abm_qdisc_is_red to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_qdisc_is_red(%struct.nfp_qdisc* %0) #0 {
  %2 = alloca %struct.nfp_qdisc*, align 8
  store %struct.nfp_qdisc* %0, %struct.nfp_qdisc** %2, align 8
  %3 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %2, align 8
  %4 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NFP_QDISC_RED, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %2, align 8
  %10 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NFP_QDISC_GRED, align 8
  %13 = icmp eq i64 %11, %12
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ true, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
