; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_wtbl_set_smps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_wtbl_set_smps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }
%struct.mt7603_sta = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_WTBL1_W2_SMPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_wtbl_set_smps(%struct.mt7603_dev* %0, %struct.mt7603_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.mt7603_dev*, align 8
  %5 = alloca %struct.mt7603_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %4, align 8
  store %struct.mt7603_sta* %1, %struct.mt7603_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mt7603_sta*, %struct.mt7603_sta** %5, align 8
  %9 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @mt7603_wtbl1_addr(i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.mt7603_sta*, %struct.mt7603_sta** %5, align 8
  %14 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.mt7603_dev*, %struct.mt7603_dev** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add nsw i64 %21, 8
  %23 = load i32, i32* @MT_WTBL1_W2_SMPS, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @mt76_rmw_field(%struct.mt7603_dev* %20, i64 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mt7603_sta*, %struct.mt7603_sta** %5, align 8
  %28 = getelementptr inbounds %struct.mt7603_sta, %struct.mt7603_sta* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %19, %18
  ret void
}

declare dso_local i64 @mt7603_wtbl1_addr(i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt7603_dev*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
