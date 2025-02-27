; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_get_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_via-sdmmc.c_via_sdc_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.via_crdr_mmc_host = type { i32, i64 }

@VIA_CRDR_SDSTATUS = common dso_local global i64 0, align 8
@VIA_CRDR_SDSTS_WP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @via_sdc_get_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_sdc_get_ro(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.via_crdr_mmc_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = call %struct.via_crdr_mmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.via_crdr_mmc_host* %7, %struct.via_crdr_mmc_host** %3, align 8
  %8 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VIA_CRDR_SDSTATUS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readw(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.via_crdr_mmc_host*, %struct.via_crdr_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.via_crdr_mmc_host, %struct.via_crdr_mmc_host* %18, i32 0, i32 0
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @VIA_CRDR_SDSTS_WP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local %struct.via_crdr_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
