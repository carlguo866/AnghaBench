; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_irq.c_set_break_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_irq.c_set_break_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@etrax_irv = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_break_vector(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @etrax_irv, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = bitcast i32* %13 to i16*
  store i16* %14, i16** %5, align 8
  %15 = load i16*, i16** %5, align 8
  %16 = getelementptr inbounds i16, i16* %15, i64 1
  %17 = bitcast i16* %16 to i64*
  store i64* %17, i64** %6, align 8
  %18 = load i16*, i16** %5, align 8
  store i16 3391, i16* %18, align 2
  %19 = load i64, i64* %4, align 8
  %20 = load i64*, i64** %6, align 8
  store i64 %19, i64* %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
