; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/cchips/hd6446x/extr_hd64461.c_hd64461_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/cchips/hd6446x/extr_hd64461.c_hd64461_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@HD64461_IRQBASE = common dso_local global i32 0, align 4
@HD64461_NIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @hd64461_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hd64461_unmask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @HD64461_IRQBASE, align 4
  %11 = sub i32 %9, %10
  %12 = shl i32 1, %11
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %5, align 2
  %14 = load i32, i32* @HD64461_NIMR, align 4
  %15 = call zeroext i16 @__raw_readw(i32 %14)
  store i16 %15, i16* %4, align 2
  %16 = load i16, i16* %5, align 2
  %17 = zext i16 %16 to i32
  %18 = xor i32 %17, -1
  %19 = load i16, i16* %4, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, %18
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %4, align 2
  %23 = load i16, i16* %4, align 2
  %24 = load i32, i32* @HD64461_NIMR, align 4
  %25 = call i32 @__raw_writew(i16 zeroext %23, i32 %24)
  ret void
}

declare dso_local zeroext i16 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
