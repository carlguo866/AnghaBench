; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_mmu-context.c_init_new_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_mmu-context.c_init_new_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_new_context(%struct.task_struct* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %6 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %5, i32 0, i32 0
  %7 = call i32 @memset(%struct.TYPE_2__* %6, i32 0, i32 12)
  %8 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 4
  %15 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
