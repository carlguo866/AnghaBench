; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-meson.c_meson_rtc_serial_bus_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-meson.c_meson_rtc_serial_bus_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_rtc = type { i32 }

@RTC_ADDR0 = common dso_local global i32 0, align 4
@RTC_ADDR0_LINE_SEN = common dso_local global i32 0, align 4
@RTC_ADDR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @meson_rtc_serial_bus_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_rtc_serial_bus_reg_read(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.meson_rtc*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.meson_rtc*
  store %struct.meson_rtc* %11, %struct.meson_rtc** %8, align 8
  %12 = load %struct.meson_rtc*, %struct.meson_rtc** %8, align 8
  %13 = call i32 @meson_rtc_get_bus(%struct.meson_rtc* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.meson_rtc*, %struct.meson_rtc** %8, align 8
  %20 = getelementptr inbounds %struct.meson_rtc, %struct.meson_rtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RTC_ADDR0, align 4
  %23 = load i32, i32* @RTC_ADDR0_LINE_SEN, align 4
  %24 = load i32, i32* @RTC_ADDR0_LINE_SEN, align 4
  %25 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.meson_rtc*, %struct.meson_rtc** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RTC_ADDR_BITS, align 4
  %29 = call i32 @meson_rtc_send_bits(%struct.meson_rtc* %26, i32 %27, i32 %28)
  %30 = load %struct.meson_rtc*, %struct.meson_rtc** %8, align 8
  %31 = call i32 @meson_rtc_set_dir(%struct.meson_rtc* %30, i32 0)
  %32 = load %struct.meson_rtc*, %struct.meson_rtc** %8, align 8
  %33 = call i32 @meson_rtc_get_data(%struct.meson_rtc* %32)
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %18, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @meson_rtc_get_bus(%struct.meson_rtc*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @meson_rtc_send_bits(%struct.meson_rtc*, i32, i32) #1

declare dso_local i32 @meson_rtc_set_dir(%struct.meson_rtc*, i32) #1

declare dso_local i32 @meson_rtc_get_data(%struct.meson_rtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
