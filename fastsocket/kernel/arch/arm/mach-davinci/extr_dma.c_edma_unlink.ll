; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@edma_info = common dso_local global %struct.TYPE_2__** null, align 8
@PARM_LINK_BCNTRLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edma_unlink(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @EDMA_CTLR(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @EDMA_CHAN_SLOT(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp uge i32 %8, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PARM_LINK_BCNTRLD, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @edma_parm_or(i32 %19, i32 %20, i32 %21, i32 65535)
  br label %23

23:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @EDMA_CTLR(i32) #1

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @edma_parm_or(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
