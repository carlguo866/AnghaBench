; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c_mm_total_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c_mm_total_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mm_struct*)* @mm_total_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mm_total_size(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %6 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %5, i32 0, i32 0
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %7, %struct.vm_area_struct** %3, align 8
  br label %8

8:                                                ; preds = %21, %1
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %10 = icmp ne %struct.vm_area_struct* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %11
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 2
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %23, align 8
  store %struct.vm_area_struct* %24, %struct.vm_area_struct** %3, align 8
  br label %8

25:                                               ; preds = %8
  %26 = load i64, i64* %4, align 8
  ret i64 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
