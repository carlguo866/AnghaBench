; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_read_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_read_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.phytbl_info = type { i32, i32, i32, i32, i64 }

@BCM43224_CHIP_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_read_table(%struct.brcms_phy* %0, %struct.phytbl_info* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.brcms_phy*, align 8
  %7 = alloca %struct.phytbl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %6, align 8
  store %struct.phytbl_info* %1, %struct.phytbl_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.phytbl_info*, %struct.phytbl_info** %7, align 8
  %19 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load %struct.phytbl_info*, %struct.phytbl_info** %7, align 8
  %22 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.phytbl_info*, %struct.phytbl_info** %7, align 8
  %25 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load %struct.phytbl_info*, %struct.phytbl_info** %7, align 8
  %28 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i64*
  store i64* %30, i64** %15, align 8
  %31 = load %struct.phytbl_info*, %struct.phytbl_info** %7, align 8
  %32 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %16, align 8
  %35 = load %struct.phytbl_info*, %struct.phytbl_info** %7, align 8
  %36 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %17, align 8
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %12, align 4
  %42 = shl i32 %41, 10
  %43 = load i32, i32* %13, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @write_phy_reg(%struct.brcms_phy* %39, i32 %40, i32 %44)
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %123, %5
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.phytbl_info*, %struct.phytbl_info** %7, align 8
  %49 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %126

52:                                               ; preds = %46
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BCM43224_CHIP_ID, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %52
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %62 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @read_phy_reg(%struct.brcms_phy* %68, i32 %69)
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %12, align 4
  %74 = shl i32 %73, 10
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %75, %76
  %78 = or i32 %74, %77
  %79 = call i32 @write_phy_reg(%struct.brcms_phy* %71, i32 %72, i32 %78)
  br label %80

80:                                               ; preds = %67, %60, %52
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @read_phy_reg(%struct.brcms_phy* %84, i32 %85)
  %87 = load i32*, i32** %17, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @read_phy_reg(%struct.brcms_phy* %91, i32 %92)
  %94 = shl i32 %93, 16
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %94
  store i32 %100, i32* %98, align 4
  br label %122

101:                                              ; preds = %80
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, 16
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @read_phy_reg(%struct.brcms_phy* %105, i32 %106)
  %108 = load i32*, i32** %16, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  br label %121

112:                                              ; preds = %101
  %113 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @read_phy_reg(%struct.brcms_phy* %113, i32 %114)
  %116 = sext i32 %115 to i64
  %117 = load i64*, i64** %15, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 %116, i64* %120, align 8
  br label %121

121:                                              ; preds = %112, %104
  br label %122

122:                                              ; preds = %121, %83
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %46

126:                                              ; preds = %46
  ret void
}

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
