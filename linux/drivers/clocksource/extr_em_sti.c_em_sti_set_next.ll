; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_em_sti.c_em_sti_set_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_em_sti.c_em_sti_set_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em_sti_priv = type { i32 }

@STI_INTENCLR = common dso_local global i32 0, align 4
@STI_COMPA_H = common dso_local global i32 0, align 4
@STI_COMPA_L = common dso_local global i32 0, align 4
@STI_INTFFCLR = common dso_local global i32 0, align 4
@STI_INTENSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em_sti_priv*, i32)* @em_sti_set_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_sti_set_next(%struct.em_sti_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.em_sti_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.em_sti_priv* %0, %struct.em_sti_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %7 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @raw_spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %11 = load i32, i32* @STI_INTENCLR, align 4
  %12 = call i32 @em_sti_write(%struct.em_sti_priv* %10, i32 %11, i32 1)
  %13 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %14 = load i32, i32* @STI_COMPA_H, align 4
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 32
  %17 = call i32 @em_sti_write(%struct.em_sti_priv* %13, i32 %14, i32 %16)
  %18 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %19 = load i32, i32* @STI_COMPA_L, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @em_sti_write(%struct.em_sti_priv* %18, i32 %19, i32 %20)
  %22 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %23 = load i32, i32* @STI_INTFFCLR, align 4
  %24 = call i32 @em_sti_write(%struct.em_sti_priv* %22, i32 %23, i32 1)
  %25 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %26 = load i32, i32* @STI_INTENSET, align 4
  %27 = call i32 @em_sti_write(%struct.em_sti_priv* %25, i32 %26, i32 1)
  %28 = load %struct.em_sti_priv*, %struct.em_sti_priv** %3, align 8
  %29 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @raw_spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @em_sti_write(%struct.em_sti_priv*, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
