; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_enlighten_pv.c_xen_read_msr_safe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_enlighten_pv.c_xen_read_msr_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X2APIC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @xen_read_msr_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_read_msr_safe(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @pmu_msr_read(i32 %7, i32* %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @native_read_msr_safe(i32 %14, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %23 [
    i32 128, label %18
  ]

18:                                               ; preds = %13
  %19 = load i32, i32* @X2APIC_ENABLE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %13, %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @pmu_msr_read(i32, i32*, i32*) #1

declare dso_local i32 @native_read_msr_safe(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
