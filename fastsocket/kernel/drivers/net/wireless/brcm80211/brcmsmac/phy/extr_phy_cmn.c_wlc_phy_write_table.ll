; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_write_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_write_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.phytbl_info = type { i32, i32, i32, i32, i64 }

@BCM43224_CHIP_ID = common dso_local global i64 0, align 8
@NPHY_TBL_ID_ANTSWCTRLLUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_write_table(%struct.brcms_phy* %0, %struct.phytbl_info* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.brcms_phy*, align 8
  %7 = alloca %struct.phytbl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
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
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %15, align 8
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

46:                                               ; preds = %128, %5
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.phytbl_info*, %struct.phytbl_info** %7, align 8
  %49 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %131

52:                                               ; preds = %46
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %54 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BCM43224_CHIP_ID, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %52
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %62 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %84

67:                                               ; preds = %60
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @NPHY_TBL_ID_ANTSWCTRLLUT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @read_phy_reg(%struct.brcms_phy* %72, i32 %73)
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 %77, 10
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %79, %80
  %82 = or i32 %78, %81
  %83 = call i32 @write_phy_reg(%struct.brcms_phy* %75, i32 %76, i32 %82)
  br label %84

84:                                               ; preds = %71, %67, %60, %52
  %85 = load i32, i32* %14, align 4
  %86 = icmp eq i32 %85, 32
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32*, i32** %17, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 16
  %96 = call i32 @write_phy_reg(%struct.brcms_phy* %88, i32 %89, i32 %95)
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %17, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @write_phy_reg(%struct.brcms_phy* %97, i32 %98, i32 %103)
  br label %127

105:                                              ; preds = %84
  %106 = load i32, i32* %14, align 4
  %107 = icmp eq i32 %106, 16
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32*, i32** %16, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @write_phy_reg(%struct.brcms_phy* %109, i32 %110, i32 %115)
  br label %126

117:                                              ; preds = %105
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @write_phy_reg(%struct.brcms_phy* %118, i32 %119, i32 %124)
  br label %126

126:                                              ; preds = %117, %108
  br label %127

127:                                              ; preds = %126, %87
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %46

131:                                              ; preds = %46
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
