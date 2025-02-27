; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_rf_onoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_rf_onoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BWN_PHY_RF_OVERRIDE_0 = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_2 = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_VAL_0 = common dso_local global i32 0, align 4
@BWN_PHY_AFE_DDFS = common dso_local global i32 0, align 4
@BWN_PHY_RF_OVERRIDE_2_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_phy_lp_rf_onoff(%struct.bwn_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %9 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %10 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %8, i32 %9, i32 57599)
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %12 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 2
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 63479, i32 65511
  %20 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %11, i32 %12, i32 %19)
  br label %56

21:                                               ; preds = %2
  %22 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %23 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %29 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %30 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %28, i32 %29, i32 33791)
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %32 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %33 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %31, i32 %32, i32 7936)
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %35 = load i32, i32* @BWN_PHY_AFE_DDFS, align 4
  %36 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %34, i32 %35, i32 33023)
  %37 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %38 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %39 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %37, i32 %38, i32 57343)
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %41 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %42 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %40, i32 %41, i32 2056)
  br label %56

43:                                               ; preds = %21
  %44 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %45 = load i32, i32* @BWN_PHY_RF_OVERRIDE_VAL_0, align 4
  %46 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %44, i32 %45, i32 57599)
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %48 = load i32, i32* @BWN_PHY_RF_OVERRIDE_0, align 4
  %49 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %47, i32 %48, i32 7936)
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %51 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2_VAL, align 4
  %52 = call i32 @BWN_PHY_MASK(%struct.bwn_mac* %50, i32 %51, i32 64767)
  %53 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %54 = load i32, i32* @BWN_PHY_RF_OVERRIDE_2, align 4
  %55 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %53, i32 %54, i32 24)
  br label %56

56:                                               ; preds = %43, %27, %7
  ret void
}

declare dso_local i32 @BWN_PHY_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
