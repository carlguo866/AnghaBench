; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_gptimers.c_get_gptimer_over.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_gptimers.c_get_gptimer_over.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAX_BLACKFIN_GPTIMERS = common dso_local global i32 0, align 4
@group_regs = common dso_local global %struct.TYPE_2__** null, align 8
@tovf_mask = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_gptimer_over(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @MAX_BLACKFIN_GPTIMERS, align 4
  %5 = icmp slt i32 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @tassert(i32 %6)
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @group_regs, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @BFIN_TIMER_OCTET(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %8, i64 %10
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @tovf_mask, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %14, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i32 @tassert(i32) #1

declare dso_local i64 @BFIN_TIMER_OCTET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
