; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_toggle_igi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_toggle_igi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_RXIGI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_toggle_igi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_toggle_igi(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %4 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %5 = load i32, i32* @REG_RXIGI, align 4
  %6 = call i64 @rtw_read32_mask(%struct.rtw_dev* %4, i32 %5, i32 127)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = load i32, i32* @REG_RXIGI, align 4
  %9 = load i64, i64* %3, align 8
  %10 = sub nsw i64 %9, 2
  %11 = call i32 @rtw_write32_mask(%struct.rtw_dev* %7, i32 %8, i32 127, i64 %10)
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %13 = load i32, i32* @REG_RXIGI, align 4
  %14 = load i64, i64* %3, align 8
  %15 = sub nsw i64 %14, 2
  %16 = call i32 @rtw_write32_mask(%struct.rtw_dev* %12, i32 %13, i32 32512, i64 %15)
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %18 = load i32, i32* @REG_RXIGI, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @rtw_write32_mask(%struct.rtw_dev* %17, i32 %18, i32 127, i64 %19)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %22 = load i32, i32* @REG_RXIGI, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @rtw_write32_mask(%struct.rtw_dev* %21, i32 %22, i32 32512, i64 %23)
  ret void
}

declare dso_local i64 @rtw_read32_mask(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write32_mask(%struct.rtw_dev*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
