; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_split_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_split_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i64 }
%struct.vm_area_struct = type { i32 }

@sysctl_max_map_count = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @split_vma(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @sysctl_max_map_count, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %24

18:                                               ; preds = %4
  %19 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @__split_vma(%struct.mm_struct* %19, %struct.vm_area_struct* %20, i64 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @__split_vma(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
