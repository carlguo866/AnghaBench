; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_fini_busdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_busdma_dmar.c_dmar_fini_busdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_fini_busdma(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %3 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %4 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %10 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %13 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %12, i32 0, i32 1
  %14 = call i32 @taskqueue_drain(i32* %11, i32* %13)
  %15 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %16 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @taskqueue_free(i32* %17)
  %19 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %20 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
