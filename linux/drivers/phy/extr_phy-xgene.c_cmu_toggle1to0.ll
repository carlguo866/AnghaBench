; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_cmu_toggle1to0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_cmu_toggle1to0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_phy_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_phy_ctx*, i32, i32, i32)* @cmu_toggle1to0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmu_toggle1to0(%struct.xgene_phy_ctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xgene_phy_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xgene_phy_ctx* %0, %struct.xgene_phy_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %10, i32 %11, i32 %12, i32* %9)
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %9, align 4
  %17 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @cmu_rd(%struct.xgene_phy_ctx* %22, i32 %23, i32 %24, i32* %9)
  %26 = load i32, i32* %8, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @cmu_wr(%struct.xgene_phy_ctx* %30, i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @cmu_rd(%struct.xgene_phy_ctx*, i32, i32, i32*) #1

declare dso_local i32 @cmu_wr(%struct.xgene_phy_ctx*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
