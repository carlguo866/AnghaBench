; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_intr_hw.c__host1x_intr_set_syncpt_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_intr_hw.c__host1x_intr_set_syncpt_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*, i32, i32)* @_host1x_intr_set_syncpt_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_host1x_intr_set_syncpt_threshold(%struct.host1x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.host1x*, %struct.host1x** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @HOST1X_SYNC_SYNCPT_INT_THRESH(i32 %9)
  %11 = call i32 @host1x_sync_writel(%struct.host1x* %7, i32 %8, i32 %10)
  ret void
}

declare dso_local i32 @host1x_sync_writel(%struct.host1x*, i32, i32) #1

declare dso_local i32 @HOST1X_SYNC_SYNCPT_INT_THRESH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
