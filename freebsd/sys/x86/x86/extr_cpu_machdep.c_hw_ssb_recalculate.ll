; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_hw_ssb_recalculate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_hw_ssb_recalculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hw_ssb_disable = common dso_local global i32 0, align 4
@cpu_ia32_arch_caps = common dso_local global i32 0, align 4
@IA32_ARCH_CAP_SSB_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_ssb_recalculate(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @hw_ssb_disable, align 4
  switch i32 %3, label %4 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %11
  ]

4:                                                ; preds = %1
  store i32 0, i32* @hw_ssb_disable, align 4
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @hw_ssb_set(i32 0, i32 %6)
  br label %20

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @hw_ssb_set(i32 1, i32 %9)
  br label %20

11:                                               ; preds = %1
  %12 = load i32, i32* @cpu_ia32_arch_caps, align 4
  %13 = load i32, i32* @IA32_ARCH_CAP_SSB_NO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @hw_ssb_set(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %8, %5
  ret void
}

declare dso_local i32 @hw_ssb_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
