; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_phy.c_mt76x02_get_max_rate_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_phy.c_mt76x02_get_max_rate_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_rate_power = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x02_get_max_rate_power(%struct.mt76_rate_power* %0) #0 {
  %2 = alloca %struct.mt76_rate_power*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mt76_rate_power* %0, %struct.mt76_rate_power** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 8
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %2, align 8
  %12 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @max(i32 %10, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %9
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5

22:                                               ; preds = %5
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
