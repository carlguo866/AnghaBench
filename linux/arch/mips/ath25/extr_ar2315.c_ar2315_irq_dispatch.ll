; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ath25/extr_ar2315.c_ar2315_irq_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ath25/extr_ar2315.c_ar2315_irq_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAUSEF_IP3 = common dso_local global i32 0, align 4
@AR2315_IRQ_WLAN0 = common dso_local global i32 0, align 4
@CAUSEF_IP2 = common dso_local global i32 0, align 4
@AR2315_IRQ_MISC = common dso_local global i32 0, align 4
@CAUSEF_IP7 = common dso_local global i32 0, align 4
@ATH25_IRQ_CPU_CLOCK = common dso_local global i32 0, align 4
@AR2315_IRQ_LCBUS_PCI = common dso_local global i32 0, align 4
@CAUSEF_IP5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ar2315_irq_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar2315_irq_dispatch() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @read_c0_status()
  %3 = call i32 (...) @read_c0_cause()
  %4 = and i32 %2, %3
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @CAUSEF_IP3, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @AR2315_IRQ_WLAN0, align 4
  %11 = call i32 @do_IRQ(i32 %10)
  br label %32

12:                                               ; preds = %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @CAUSEF_IP2, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @AR2315_IRQ_MISC, align 4
  %19 = call i32 @do_IRQ(i32 %18)
  br label %31

20:                                               ; preds = %12
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @CAUSEF_IP7, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @ATH25_IRQ_CPU_CLOCK, align 4
  %27 = call i32 @do_IRQ(i32 %26)
  br label %30

28:                                               ; preds = %20
  %29 = call i32 (...) @spurious_interrupt()
  br label %30

30:                                               ; preds = %28, %25
  br label %31

31:                                               ; preds = %30, %17
  br label %32

32:                                               ; preds = %31, %9
  ret void
}

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @do_IRQ(i32) #1

declare dso_local i32 @spurious_interrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
