; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_mac_pull_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_mac_pull_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@EFX_MAC_STATS_WAIT_ATTEMPTS = common dso_local global i32 0, align 4
@EFX_MC_STATS_GENERATION_INVALID = common dso_local global i64 0, align 8
@EFX_STATS_PULL = common dso_local global i32 0, align 4
@EFX_MAC_STATS_WAIT_US = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_mcdi_mac_pull_stats(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  store i64* %8, i64** %3, align 8
  %9 = load i32, i32* @EFX_MAC_STATS_WAIT_ATTEMPTS, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* @EFX_MC_STATS_GENERATION_INVALID, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %11, i64 %16
  store i64 %10, i64* %17, align 8
  %18 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %19 = load i32, i32* @EFX_STATS_PULL, align 4
  %20 = call i32 @efx_mcdi_mac_stats(%struct.efx_nic* %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %38, %1
  %22 = load i64*, i64** %3, align 8
  %23 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %22, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EFX_MC_STATS_GENERATION_INVALID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  %35 = icmp ne i32 %33, 0
  br label %36

36:                                               ; preds = %32, %21
  %37 = phi i1 [ false, %21 ], [ %35, %32 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i32, i32* @EFX_MAC_STATS_WAIT_US, align 4
  %40 = call i32 @udelay(i32 %39)
  br label %21

41:                                               ; preds = %36
  ret void
}

declare dso_local i32 @efx_mcdi_mac_stats(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
