; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl1251_sdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl1251_sdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.wl1251 = type { i64, %struct.wl1251_sdio* }
%struct.wl1251_sdio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @wl1251_sdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_sdio_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.wl1251_sdio*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %5 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %6 = call %struct.wl1251* @sdio_get_drvdata(%struct.sdio_func* %5)
  store %struct.wl1251* %6, %struct.wl1251** %3, align 8
  %7 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %8 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %7, i32 0, i32 1
  %9 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %8, align 8
  store %struct.wl1251_sdio* %9, %struct.wl1251_sdio** %4, align 8
  %10 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %11 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %10, i32 0, i32 0
  %12 = call i32 @pm_runtime_get_noresume(i32* %11)
  %13 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %14 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %19 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %22 = call i32 @free_irq(i64 %20, %struct.wl1251* %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %25 = call i32 @wl1251_free_hw(%struct.wl1251* %24)
  %26 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %4, align 8
  %27 = call i32 @kfree(%struct.wl1251_sdio* %26)
  %28 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %29 = call i32 @sdio_claim_host(%struct.sdio_func* %28)
  %30 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %31 = call i32 @sdio_release_irq(%struct.sdio_func* %30)
  %32 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %33 = call i32 @sdio_disable_func(%struct.sdio_func* %32)
  %34 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %35 = call i32 @sdio_release_host(%struct.sdio_func* %34)
  ret void
}

declare dso_local %struct.wl1251* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.wl1251*) #1

declare dso_local i32 @wl1251_free_hw(%struct.wl1251*) #1

declare dso_local i32 @kfree(%struct.wl1251_sdio*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
