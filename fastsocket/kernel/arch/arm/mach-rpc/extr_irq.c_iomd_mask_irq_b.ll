; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-rpc/extr_irq.c_iomd_mask_irq_b.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-rpc/extr_irq.c_iomd_mask_irq_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOMD_IRQMASKB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @iomd_mask_irq_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iomd_mask_irq_b(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 7
  %7 = shl i32 1, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @IOMD_IRQMASKB, align 4
  %9 = call i32 @iomd_readb(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = load i32, i32* @IOMD_IRQMASKB, align 4
  %15 = call i32 @iomd_writeb(i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @iomd_readb(i32) #1

declare dso_local i32 @iomd_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
