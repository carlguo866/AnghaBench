; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lib/extr_delay.c_delay_loop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lib/extr_delay.c_delay_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @delay_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delay_loop(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  call void asm sideeffect "\09test $0,$0\09\0A\09jz 3f\09\09\0A\09jmp 1f\09\09\0A.align 16\09\09\0A1:\09jmp 2f\09\09\0A.align 16\09\09\0A2:\09dec $0\09\09\0A\09jnz 2b\09\09\0A3:\09dec $0\09\09\0A", "{ax},~{dirflag},~{fpsr},~{flags}"(i64 %3) #1, !srcloc !2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 218, i32 238, i32 253, i32 270, i32 288, i32 307, i32 325, i32 343, i32 359}
