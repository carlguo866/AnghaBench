; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_inbyte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_atp.h_inbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i16)* @inbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @inbyte(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  store i16 %0, i16* %2, align 2
  %4 = load i16, i16* %2, align 2
  %5 = call i8 asm sideeffect "inb ${1:w},${0:b}", "={ax},{dx},~{dirflag},~{fpsr},~{flags}"(i16 %4) #1, !srcloc !2
  store i8 %5, i8* %3, align 1
  %6 = load i8, i8* %3, align 1
  ret i8 %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 261}
