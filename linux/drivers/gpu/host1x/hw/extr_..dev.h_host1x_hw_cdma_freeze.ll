; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_..dev.h_host1x_hw_cdma_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_..dev.h_host1x_hw_cdma_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.host1x_cdma*)* }
%struct.host1x_cdma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*, %struct.host1x_cdma*)* @host1x_hw_cdma_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_hw_cdma_freeze(%struct.host1x* %0, %struct.host1x_cdma* %1) #0 {
  %3 = alloca %struct.host1x*, align 8
  %4 = alloca %struct.host1x_cdma*, align 8
  store %struct.host1x* %0, %struct.host1x** %3, align 8
  store %struct.host1x_cdma* %1, %struct.host1x_cdma** %4, align 8
  %5 = load %struct.host1x*, %struct.host1x** %3, align 8
  %6 = getelementptr inbounds %struct.host1x, %struct.host1x* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.host1x_cdma*)*, i32 (%struct.host1x_cdma*)** %8, align 8
  %10 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %11 = call i32 %9(%struct.host1x_cdma* %10)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
