; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_msi.c_read_imipr_2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_msi.c_read_imipr_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_imipr_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_imipr_2() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 asm sideeffect "mrc p6, 0, $0, c10, c1, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 238}
