; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_get_ccsidr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_get_ccsidr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_ccsidr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ccsidr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @local_irq_disable()
  %5 = load i32, i32* %2, align 4
  call void asm sideeffect "mcr p15, 2, $0, c0, c0, 0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %5) #2, !srcloc !2
  %6 = call i32 (...) @isb()
  %7 = call i32 asm sideeffect "mrc p15, 1, $0, c0, c0, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i32 %7, i32* %3, align 4
  %8 = call i32 (...) @local_irq_enable()
  %9 = load i32, i32* %3, align 4
  ret i32 %9
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 339}
!3 = !{i32 409}
