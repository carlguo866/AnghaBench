; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp.h_amber_LED_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp.h_amber_LED_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i64 }

@LED_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*, i32)* @amber_LED_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amber_LED_off(%struct.controller* %0, i32 %1) #0 {
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.controller*, %struct.controller** %3, align 8
  %7 = getelementptr inbounds %struct.controller, %struct.controller* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LED_CONTROL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = shl i64 16842752, %13
  %15 = xor i64 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.controller*, %struct.controller** %3, align 8
  %22 = getelementptr inbounds %struct.controller, %struct.controller* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LED_CONTROL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
