; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_dfs_start_rdd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_dfs_start_rdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32 }

@RDD_START = common dso_local global i32 0, align 4
@MT_RX_SEL0 = common dso_local global i32 0, align 4
@RDD_DET_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*, i32)* @mt7615_dfs_start_rdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_dfs_start_rdd(%struct.mt7615_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7615_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %8 = load i32, i32* @RDD_START, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MT_RX_SEL0, align 4
  %11 = call i32 @mt7615_mcu_rdd_cmd(%struct.mt7615_dev* %7, i32 %8, i32 %9, i32 %10, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.mt7615_dev*, %struct.mt7615_dev** %4, align 8
  %18 = load i32, i32* @RDD_DET_MODE, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MT_RX_SEL0, align 4
  %21 = call i32 @mt7615_mcu_rdd_cmd(%struct.mt7615_dev* %17, i32 %18, i32 %19, i32 %20, i32 1)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %14
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @mt7615_mcu_rdd_cmd(%struct.mt7615_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
