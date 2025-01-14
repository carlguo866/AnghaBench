; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_vma_has_reserves.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_vma_has_reserves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@VM_MAYSHARE = common dso_local global i32 0, align 4
@HPAGE_RESV_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*)* @vma_has_reserves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vma_has_reserves(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %5 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @VM_MAYSHARE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %13 = load i32, i32* @HPAGE_RESV_OWNER, align 4
  %14 = call i64 @is_vma_resv_set(%struct.vm_area_struct* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @is_vma_resv_set(%struct.vm_area_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
