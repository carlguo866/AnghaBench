; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_read_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_dma.c_edma_read_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.edmacc_param = type { i32 }

@edma_info = common dso_local global %struct.TYPE_2__** null, align 8
@edmacc_regs_base = common dso_local global i64* null, align 8
@PARM_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edma_read_slot(i32 %0, %struct.edmacc_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edmacc_param*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.edmacc_param* %1, %struct.edmacc_param** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @EDMA_CTLR(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @EDMA_CHAN_SLOT(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @edma_info, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp uge i32 %10, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.edmacc_param*, %struct.edmacc_param** %4, align 8
  %22 = load i64*, i64** @edmacc_regs_base, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @PARM_OFFSET(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = load i32, i32* @PARM_SIZE, align 4
  %31 = call i32 @memcpy_fromio(%struct.edmacc_param* %21, i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @EDMA_CTLR(i32) #1

declare dso_local i32 @EDMA_CHAN_SLOT(i32) #1

declare dso_local i32 @memcpy_fromio(%struct.edmacc_param*, i64, i32) #1

declare dso_local i64 @PARM_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
