; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_pm.c_exynos_cpu_restore_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_pm.c_exynos_cpu_restore_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@save_arm_register = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exynos_cpu_restore_register() #0 {
  %1 = alloca i64, align 8
  %2 = load i64*, i64** @save_arm_register, align 8
  %3 = getelementptr inbounds i64, i64* %2, i64 0
  %4 = load i64, i64* %3, align 8
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c15, c0, 0", "r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %5) #1, !srcloc !2
  %6 = load i64*, i64** @save_arm_register, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 1
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  call void asm sideeffect "mcr p15, 0, $0, c15, c0, 1", "r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %9) #1, !srcloc !3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 278}
!3 = !{i32 393}
