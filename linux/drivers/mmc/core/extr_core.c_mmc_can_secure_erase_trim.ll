; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_can_secure_erase_trim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_can_secure_erase_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EXT_CSD_SEC_ER_EN = common dso_local global i32 0, align 4
@MMC_QUIRK_SEC_ERASE_TRIM_BROKEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_can_secure_erase_trim(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %4 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %5 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @EXT_CSD_SEC_ER_EN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MMC_QUIRK_SEC_ERASE_TRIM_BROKEN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %20

19:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
