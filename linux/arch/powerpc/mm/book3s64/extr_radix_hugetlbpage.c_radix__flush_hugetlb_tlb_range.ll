; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_hugetlbpage.c_radix__flush_hugetlb_tlb_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_hugetlbpage.c_radix__flush_hugetlb_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32 }
%struct.hstate = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radix__flush_hugetlb_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hstate*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.hstate* @hstate_file(i32 %11)
  store %struct.hstate* %12, %struct.hstate** %8, align 8
  %13 = load %struct.hstate*, %struct.hstate** %8, align 8
  %14 = call i32 @hstate_get_psize(%struct.hstate* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @radix__flush_tlb_range_psize(i32 %17, i64 %18, i64 %19, i32 %20)
  ret void
}

declare dso_local %struct.hstate* @hstate_file(i32) #1

declare dso_local i32 @hstate_get_psize(%struct.hstate*) #1

declare dso_local i32 @radix__flush_tlb_range_psize(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
