; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_disable_kr_training.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-mdio.c_xgbe_an_disable_kr_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_PMD_CTRL = common dso_local global i32 0, align 4
@XGBE_KR_TRAINING_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_an_disable_kr_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_an_disable_kr_training(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %6 = load i32, i32* @MDIO_PMA_10GBR_PMD_CTRL, align 4
  %7 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %4, i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @XGBE_KR_TRAINING_ENABLE, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %13 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %14 = load i32, i32* @MDIO_PMA_10GBR_PMD_CTRL, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %12, i32 %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
