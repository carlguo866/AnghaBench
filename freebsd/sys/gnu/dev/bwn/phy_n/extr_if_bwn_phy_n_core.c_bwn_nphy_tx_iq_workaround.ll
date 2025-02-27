; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_iq_workaround.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_tx_iq_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }

@BWN_SHARED = common dso_local global i32 0, align 4
@BWN_SHM_SH_NPHY_TXIQW0 = common dso_local global i32 0, align 4
@BWN_SHM_SH_NPHY_TXIQW1 = common dso_local global i32 0, align 4
@BWN_SHM_SH_NPHY_TXIQW2 = common dso_local global i32 0, align 4
@BWN_SHM_SH_NPHY_TXIQW3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_tx_iq_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_tx_iq_workaround(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca [4 x i32], align 16
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %4 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %5 = call i32 @BWN_NTAB16(i32 15, i32 80)
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %7 = call i32 @bwn_ntab_read_bulk(%struct.bwn_mac* %4, i32 %5, i32 4, i32* %6)
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = load i32, i32* @BWN_SHARED, align 4
  %10 = load i32, i32* @BWN_SHM_SH_NPHY_TXIQW0, align 4
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %12 = load i32, i32* %11, align 16
  %13 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %8, i32 %9, i32 %10, i32 %12)
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %15 = load i32, i32* @BWN_SHARED, align 4
  %16 = load i32, i32* @BWN_SHM_SH_NPHY_TXIQW1, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %14, i32 %15, i32 %16, i32 %18)
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %21 = load i32, i32* @BWN_SHARED, align 4
  %22 = load i32, i32* @BWN_SHM_SH_NPHY_TXIQW2, align 4
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %20, i32 %21, i32 %22, i32 %24)
  %26 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %27 = load i32, i32* @BWN_SHARED, align 4
  %28 = load i32, i32* @BWN_SHM_SH_NPHY_TXIQW3, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %26, i32 %27, i32 %28, i32 %30)
  ret void
}

declare dso_local i32 @bwn_ntab_read_bulk(%struct.bwn_mac*, i32, i32, i32*) #1

declare dso_local i32 @BWN_NTAB16(i32, i32) #1

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
