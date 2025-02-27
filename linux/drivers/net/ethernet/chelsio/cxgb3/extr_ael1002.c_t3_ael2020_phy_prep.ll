; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_t3_ael2020_phy_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_t3_ael2020_phy_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }
%struct.adapter = type { i32 }
%struct.mdio_ops = type { i32 }

@ael2020_ops = common dso_local global i32 0, align 4
@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@SUPPORTED_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"10GBASE-R\00", align 1
@ael2020_reset_regs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_ael2020_phy_prep(%struct.cphy* %0, %struct.adapter* %1, i32 %2, %struct.mdio_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cphy*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mdio_ops*, align 8
  %10 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %6, align 8
  store %struct.adapter* %1, %struct.adapter** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mdio_ops* %3, %struct.mdio_ops** %9, align 8
  %11 = load %struct.cphy*, %struct.cphy** %6, align 8
  %12 = load %struct.adapter*, %struct.adapter** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.mdio_ops*, %struct.mdio_ops** %9, align 8
  %15 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %16 = load i32, i32* @SUPPORTED_AUI, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SUPPORTED_IRQ, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @cphy_init(%struct.cphy* %11, %struct.adapter* %12, i32 %13, i32* @ael2020_ops, %struct.mdio_ops* %14, i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @msleep(i32 125)
  %24 = load %struct.cphy*, %struct.cphy** %6, align 8
  %25 = load i32, i32* @ael2020_reset_regs, align 4
  %26 = call i32 @set_phy_regs(%struct.cphy* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @cphy_init(%struct.cphy*, %struct.adapter*, i32, i32*, %struct.mdio_ops*, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @set_phy_regs(%struct.cphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
