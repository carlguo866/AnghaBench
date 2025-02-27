; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl1251_sdio_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl1251_sdio_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.sdio_func = type { i32 }

@wl1251_sdio_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*)* @wl1251_sdio_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_sdio_enable_irq(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca %struct.sdio_func*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %4 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %5 = call %struct.sdio_func* @wl_to_func(%struct.wl1251* %4)
  store %struct.sdio_func* %5, %struct.sdio_func** %3, align 8
  %6 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %7 = call i32 @sdio_claim_host(%struct.sdio_func* %6)
  %8 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %9 = load i32, i32* @wl1251_sdio_interrupt, align 4
  %10 = call i32 @sdio_claim_irq(%struct.sdio_func* %8, i32 %9)
  %11 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %12 = call i32 @sdio_release_host(%struct.sdio_func* %11)
  ret void
}

declare dso_local %struct.sdio_func* @wl_to_func(%struct.wl1251*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_claim_irq(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
