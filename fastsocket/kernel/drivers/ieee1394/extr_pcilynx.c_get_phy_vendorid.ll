; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_get_phy_vendorid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_pcilynx.c_get_phy_vendorid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_lynx = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PHY vendor id 0x%06x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_lynx*)* @get_phy_vendorid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_phy_vendorid(%struct.ti_lynx* %0) #0 {
  %2 = alloca %struct.ti_lynx*, align 8
  %3 = alloca i32, align 4
  store %struct.ti_lynx* %0, %struct.ti_lynx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ti_lynx*, %struct.ti_lynx** %2, align 8
  %5 = call i32 @sel_phy_reg_page(%struct.ti_lynx* %4, i32 1)
  %6 = load %struct.ti_lynx*, %struct.ti_lynx** %2, align 8
  %7 = call i32 @get_phy_reg(%struct.ti_lynx* %6, i32 10)
  %8 = shl i32 %7, 16
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ti_lynx*, %struct.ti_lynx** %2, align 8
  %12 = call i32 @get_phy_reg(%struct.ti_lynx* %11, i32 11)
  %13 = shl i32 %12, 8
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.ti_lynx*, %struct.ti_lynx** %2, align 8
  %17 = call i32 @get_phy_reg(%struct.ti_lynx* %16, i32 12)
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @KERN_INFO, align 4
  %21 = load %struct.ti_lynx*, %struct.ti_lynx** %2, align 8
  %22 = getelementptr inbounds %struct.ti_lynx, %struct.ti_lynx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @PRINT(i32 %20, i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @sel_phy_reg_page(%struct.ti_lynx*, i32) #1

declare dso_local i32 @get_phy_reg(%struct.ti_lynx*, i32) #1

declare dso_local i32 @PRINT(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
