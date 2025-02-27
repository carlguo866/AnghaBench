; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/emma/markeins/extr_irq.c_emma2rh_irq_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/emma/markeins/extr_irq.c_emma2rh_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EMMA2RH_IRQ_BASE = common dso_local global i64 0, align 8
@EMMA2RH_BHIF_INT_EN_0 = common dso_local global i32 0, align 4
@EMMA2RH_BHIF_INT_EN_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @emma2rh_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emma2rh_irq_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @EMMA2RH_IRQ_BASE, align 8
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = sub nsw i64 %8, %6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @EMMA2RH_BHIF_INT_EN_0, align 4
  %12 = load i32, i32* @EMMA2RH_BHIF_INT_EN_1, align 4
  %13 = load i32, i32* @EMMA2RH_BHIF_INT_EN_0, align 4
  %14 = sub i32 %12, %13
  %15 = load i32, i32* %2, align 4
  %16 = udiv i32 %15, 32
  %17 = mul i32 %14, %16
  %18 = add i32 %11, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @emma2rh_in32(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = urem i32 %21, 32
  %23 = shl i32 1, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @emma2rh_out32(i32 %24, i32 %28)
  ret void
}

declare dso_local i32 @emma2rh_in32(i32) #1

declare dso_local i32 @emma2rh_out32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
