; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_rxbb_dc_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_rxbb_dc_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@RFREG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw8822c_dpk_rxbb_dc_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_dpk_rxbb_dc_cal(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @RFREG_MASK, align 4
  %8 = call i32 @rtw_write_rf(%struct.rtw_dev* %5, i32 %6, i32 146, i32 %7, i32 542720)
  %9 = call i32 @udelay(i32 5)
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @RFREG_MASK, align 4
  %13 = call i32 @rtw_write_rf(%struct.rtw_dev* %10, i32 %11, i32 146, i32 %12, i32 542721)
  %14 = call i32 @usleep_range(i32 600, i32 610)
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RFREG_MASK, align 4
  %18 = call i32 @rtw_write_rf(%struct.rtw_dev* %15, i32 %16, i32 146, i32 %17, i32 542720)
  ret void
}

declare dso_local i32 @rtw_write_rf(%struct.rtw_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
