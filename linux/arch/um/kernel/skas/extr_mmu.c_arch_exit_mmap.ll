; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/skas/extr_mmu.c_arch_exit_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/skas/extr_mmu.c_arch_exit_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@STUB_CODE = common dso_local global i32 0, align 4
@STUB_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_exit_mmap(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %5 = load i32, i32* @STUB_CODE, align 4
  %6 = call i32* @virt_to_pte(%struct.mm_struct* %4, i32 %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %11 = load i32, i32* @STUB_CODE, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @pte_clear(%struct.mm_struct* %10, i32 %11, i32* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %16 = load i32, i32* @STUB_DATA, align 4
  %17 = call i32* @virt_to_pte(%struct.mm_struct* %15, i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %26

21:                                               ; preds = %14
  %22 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %23 = load i32, i32* @STUB_DATA, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @pte_clear(%struct.mm_struct* %22, i32 %23, i32* %24)
  br label %26

26:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32* @virt_to_pte(%struct.mm_struct*, i32) #1

declare dso_local i32 @pte_clear(%struct.mm_struct*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
