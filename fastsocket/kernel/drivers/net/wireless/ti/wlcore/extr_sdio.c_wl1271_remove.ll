; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_sdio.c_wl1271_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_sdio.c_wl1271_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.wl12xx_sdio_glue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @wl1271_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.wl12xx_sdio_glue*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %4 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %5 = call %struct.wl12xx_sdio_glue* @sdio_get_drvdata(%struct.sdio_func* %4)
  store %struct.wl12xx_sdio_glue* %5, %struct.wl12xx_sdio_glue** %3, align 8
  %6 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %7 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %6, i32 0, i32 0
  %8 = call i32 @pm_runtime_get_noresume(i32* %7)
  %9 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %3, align 8
  %10 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @platform_device_unregister(i32 %11)
  %13 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %3, align 8
  %14 = call i32 @kfree(%struct.wl12xx_sdio_glue* %13)
  ret void
}

declare dso_local %struct.wl12xx_sdio_glue* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @kfree(%struct.wl12xx_sdio_glue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
