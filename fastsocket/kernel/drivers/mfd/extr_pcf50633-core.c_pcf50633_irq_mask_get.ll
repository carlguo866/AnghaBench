; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-core.c_pcf50633_irq_mask_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-core.c_pcf50633_irq_mask_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcf50633_irq_mask_get(%struct.pcf50633* %0, i32 %1) #0 {
  %3 = alloca %struct.pcf50633*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pcf50633* %0, %struct.pcf50633** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 3
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 7
  %12 = shl i32 1, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %6, align 8
  %14 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %15 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = and i64 %19, %20
  %22 = trunc i64 %21 to i32
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
