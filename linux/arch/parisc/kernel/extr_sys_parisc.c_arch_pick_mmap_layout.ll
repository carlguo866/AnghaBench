; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_sys_parisc.c_arch_pick_mmap_layout.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_sys_parisc.c_arch_pick_mmap_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, i32, i32 }
%struct.rlimit = type { i32 }

@arch_get_unmapped_area = common dso_local global i32 0, align 4
@arch_get_unmapped_area_topdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_pick_mmap_layout(%struct.mm_struct* %0, %struct.rlimit* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.rlimit*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.rlimit* %1, %struct.rlimit** %4, align 8
  %5 = call i32 (...) @mmap_legacy_base()
  %6 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %7 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %9 = call i32 @mmap_upper_limit(%struct.rlimit* %8)
  %10 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = call i64 (...) @mmap_is_legacy()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @arch_get_unmapped_area, align 4
  %21 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @arch_get_unmapped_area_topdown, align 4
  %25 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %14
  ret void
}

declare dso_local i32 @mmap_legacy_base(...) #1

declare dso_local i32 @mmap_upper_limit(%struct.rlimit*) #1

declare dso_local i64 @mmap_is_legacy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
