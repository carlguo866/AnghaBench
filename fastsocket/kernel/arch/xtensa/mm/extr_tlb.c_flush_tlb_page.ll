; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/mm/extr_tlb.c_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/mm/extr_tlb.c_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { i64 }

@NO_CONTEXT = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 1
  %10 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %10, %struct.mm_struct** %5, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NO_CONTEXT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %37

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @local_save_flags(i64 %18)
  %20 = call i32 (...) @get_rasid_register()
  store i32 %20, i32* %7, align 4
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VM_EXEC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @invalidate_itlb_mapping(i64 %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @invalidate_dtlb_mapping(i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @set_rasid_register(i32 %33)
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @local_irq_restore(i64 %35)
  br label %37

37:                                               ; preds = %30, %16
  ret void
}

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local i32 @get_rasid_register(...) #1

declare dso_local i32 @invalidate_itlb_mapping(i64) #1

declare dso_local i32 @invalidate_dtlb_mapping(i64) #1

declare dso_local i32 @set_rasid_register(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
