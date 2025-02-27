; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c___pte_alloc_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c___pte_alloc_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@init_mm = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pte_alloc_kernel(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i32* @pte_alloc_one_kernel(%struct.TYPE_5__* @init_mm)
  store i32* %5, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = call i32 (...) @smp_wmb()
  %13 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @init_mm, i32 0, i32 0))
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pmd_none(i32 %15)
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @pmd_populate_kernel(%struct.TYPE_5__* @init_mm, i32* %20, i32* %21)
  store i32* null, i32** %4, align 8
  br label %23

23:                                               ; preds = %19, %11
  %24 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @init_mm, i32 0, i32 0))
  %25 = load i32*, i32** %4, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @pte_free_kernel(%struct.TYPE_5__* @init_mm, i32* %28)
  br label %30

30:                                               ; preds = %27, %23
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32* @pte_alloc_one_kernel(%struct.TYPE_5__*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @pmd_populate_kernel(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pte_free_kernel(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
