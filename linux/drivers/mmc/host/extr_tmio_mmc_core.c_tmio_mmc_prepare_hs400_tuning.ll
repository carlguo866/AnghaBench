; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_prepare_hs400_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_prepare_hs400_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32 }
%struct.tmio_mmc_host = type { i32 (%struct.tmio_mmc_host*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @tmio_mmc_prepare_hs400_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_mmc_prepare_hs400_tuning(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.tmio_mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.tmio_mmc_host* %7, %struct.tmio_mmc_host** %5, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 0
  %10 = load i32 (%struct.tmio_mmc_host*)*, i32 (%struct.tmio_mmc_host*)** %9, align 8
  %11 = icmp ne i32 (%struct.tmio_mmc_host*)* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %14 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %13, i32 0, i32 0
  %15 = load i32 (%struct.tmio_mmc_host*)*, i32 (%struct.tmio_mmc_host*)** %14, align 8
  %16 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %17 = call i32 %15(%struct.tmio_mmc_host* %16)
  br label %18

18:                                               ; preds = %12, %2
  ret i32 0
}

declare dso_local %struct.tmio_mmc_host* @mmc_priv(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
