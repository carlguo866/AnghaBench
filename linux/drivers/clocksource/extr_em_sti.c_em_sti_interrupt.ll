; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_em_sti.c_em_sti_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_em_sti.c_em_sti_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em_sti_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @em_sti_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_sti_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.em_sti_priv*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.em_sti_priv*
  store %struct.em_sti_priv* %7, %struct.em_sti_priv** %5, align 8
  %8 = load %struct.em_sti_priv*, %struct.em_sti_priv** %5, align 8
  %9 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %10, align 8
  %12 = load %struct.em_sti_priv*, %struct.em_sti_priv** %5, align 8
  %13 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %12, i32 0, i32 0
  %14 = call i32 %11(%struct.TYPE_2__* %13)
  %15 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
