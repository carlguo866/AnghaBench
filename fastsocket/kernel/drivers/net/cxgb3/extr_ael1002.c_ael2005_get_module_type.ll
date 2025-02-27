; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael2005_get_module_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael2005_get_module_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@AEL2005_GPIO_CTRL = common dso_local global i32 0, align 4
@phy_modtype_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael2005_get_module_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2005_get_module_type(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cphy*, %struct.cphy** %4, align 8
  %9 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %10 = load i32, i32* @AEL2005_GPIO_CTRL, align 4
  %11 = call i32 @t3_mdio_read(%struct.cphy* %8, i32 %9, i32 %10, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 256
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @phy_modtype_none, align 4
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %16
  %23 = load %struct.cphy*, %struct.cphy** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ael2xxx_get_module_type(%struct.cphy* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %20, %14
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @ael2xxx_get_module_type(%struct.cphy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
