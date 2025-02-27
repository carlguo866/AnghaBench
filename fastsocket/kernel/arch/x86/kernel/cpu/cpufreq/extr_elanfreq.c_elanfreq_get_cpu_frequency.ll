; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_elanfreq.c_elanfreq_get_cpu_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_elanfreq.c_elanfreq_get_cpu_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_CSCIR = common dso_local global i32 0, align 4
@REG_CSCDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @elanfreq_get_cpu_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elanfreq_get_cpu_frequency(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @local_irq_disable()
  %6 = load i32, i32* @REG_CSCIR, align 4
  %7 = call i32 @outb_p(i32 128, i32 %6)
  %8 = load i32, i32* @REG_CSCDR, align 4
  %9 = call i32 @inb_p(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = call i32 (...) @local_irq_enable()
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 224
  %13 = icmp eq i32 %12, 224
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 224
  %18 = icmp eq i32 %17, 192
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 66000, i32* %2, align 4
  br label %36

24:                                               ; preds = %19
  store i32 99000, i32* %2, align 4
  br label %36

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 224
  %28 = icmp eq i32 %27, 160
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 33000, i32* %2, align 4
  br label %36

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 224
  %33 = ashr i32 %32, 5
  %34 = shl i32 1, %33
  %35 = mul nsw i32 %34, 1000
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %29, %24, %23, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
