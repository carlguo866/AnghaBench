; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ams369fg06.c_ams369fg06_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ams369fg06 = type { i32 }

@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @ams369fg06_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ams369fg06_shutdown(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.ams369fg06*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.ams369fg06* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.ams369fg06* %5, %struct.ams369fg06** %3, align 8
  %6 = load %struct.ams369fg06*, %struct.ams369fg06** %3, align 8
  %7 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  %8 = call i32 @ams369fg06_power(%struct.ams369fg06* %6, i32 %7)
  ret void
}

declare dso_local %struct.ams369fg06* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @ams369fg06_power(%struct.ams369fg06*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
