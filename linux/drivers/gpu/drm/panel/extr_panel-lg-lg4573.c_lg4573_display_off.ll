; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lg-lg4573.c_lg4573_display_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lg-lg4573.c_lg4573_display_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg4573 = type { i32 }

@MIPI_DCS_SET_DISPLAY_OFF = common dso_local global i32 0, align 4
@MIPI_DCS_ENTER_SLEEP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg4573*)* @lg4573_display_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg4573_display_off(%struct.lg4573* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lg4573*, align 8
  %4 = alloca i32, align 4
  store %struct.lg4573* %0, %struct.lg4573** %3, align 8
  %5 = load %struct.lg4573*, %struct.lg4573** %3, align 8
  %6 = load i32, i32* @MIPI_DCS_SET_DISPLAY_OFF, align 4
  %7 = call i32 @lg4573_spi_write_dcs(%struct.lg4573* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  %13 = call i32 @msleep(i32 120)
  %14 = load %struct.lg4573*, %struct.lg4573** %3, align 8
  %15 = load i32, i32* @MIPI_DCS_ENTER_SLEEP_MODE, align 4
  %16 = call i32 @lg4573_spi_write_dcs(%struct.lg4573* %14, i32 %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @lg4573_spi_write_dcs(%struct.lg4573*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
