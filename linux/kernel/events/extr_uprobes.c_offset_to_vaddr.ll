; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_offset_to_vaddr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c_offset_to_vaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, i64)* @offset_to_vaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @offset_to_vaddr(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %7, %8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PAGE_SHIFT, align 8
  %14 = shl i64 %12, %13
  %15 = sub i64 %9, %14
  ret i64 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
