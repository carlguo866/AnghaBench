; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c_syscon_clk_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_clock.c_syscon_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i64 }

@syscon_clkreg_lock = common dso_local global i32 0, align 4
@U300_SYSCON_VBASE = common dso_local global i64 0, align 8
@U300_SYSCON_SBCER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @syscon_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syscon_clk_enable(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %4 = load %struct.clk*, %struct.clk** %2, align 8
  %5 = getelementptr inbounds %struct.clk, %struct.clk* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @syscon_clkreg_lock, i64 %10)
  %12 = load %struct.clk*, %struct.clk** %2, align 8
  %13 = getelementptr inbounds %struct.clk, %struct.clk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* @U300_SYSCON_VBASE, align 8
  %16 = load i64, i64* @U300_SYSCON_SBCER, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writew(i32 %14, i64 %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @syscon_clkreg_lock, i64 %19)
  br label %21

21:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
