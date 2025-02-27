; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_map_dmach_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_map_dmach_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EVENTQ_DEFAULT = common dso_local global i32 0, align 4
@edma_info = common dso_local global %struct.TYPE_2__** null, align 8
@EDMA_DMAQNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @map_dmach_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_dmach_queue(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 7
  %10 = mul i32 %9, 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @EVENTQ_DEFAULT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %14, %3
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 7
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @EDMA_DMAQNUM, align 4
  %27 = load i32, i32* %5, align 4
  %28 = lshr i32 %27, 3
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 7, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %32, %33
  %35 = call i32 @edma_modify_array(i32 %25, i32 %26, i32 %28, i32 %31, i32 %34)
  ret void
}

declare dso_local i32 @edma_modify_array(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
