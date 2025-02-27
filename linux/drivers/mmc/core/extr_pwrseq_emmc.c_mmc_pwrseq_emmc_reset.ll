; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq_emmc.c_mmc_pwrseq_emmc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq_emmc.c_mmc_pwrseq_emmc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_pwrseq_emmc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @mmc_pwrseq_emmc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_pwrseq_emmc_reset(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.mmc_pwrseq_emmc*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %4 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.mmc_pwrseq_emmc* @to_pwrseq_emmc(i32 %6)
  store %struct.mmc_pwrseq_emmc* %7, %struct.mmc_pwrseq_emmc** %3, align 8
  %8 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gpiod_set_value_cansleep(i32 %10, i32 1)
  %12 = call i32 @udelay(i32 1)
  %13 = load %struct.mmc_pwrseq_emmc*, %struct.mmc_pwrseq_emmc** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_pwrseq_emmc, %struct.mmc_pwrseq_emmc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpiod_set_value_cansleep(i32 %15, i32 0)
  %17 = call i32 @udelay(i32 200)
  ret void
}

declare dso_local %struct.mmc_pwrseq_emmc* @to_pwrseq_emmc(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
