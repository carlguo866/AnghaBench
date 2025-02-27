; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_disable_hwirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_disable_hwirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritzcard = type { i64, i32 }

@AVM_STATUS0_ENA_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fritzcard*)* @disable_hwirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_hwirq(%struct.fritzcard* %0) #0 {
  %2 = alloca %struct.fritzcard*, align 8
  store %struct.fritzcard* %0, %struct.fritzcard** %2, align 8
  %3 = load i32, i32* @AVM_STATUS0_ENA_IRQ, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %6 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %10 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %13 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 2
  %16 = call i32 @outb(i32 %11, i64 %15)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
