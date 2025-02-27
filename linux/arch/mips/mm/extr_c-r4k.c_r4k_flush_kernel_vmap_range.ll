; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_flush_kernel_vmap_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_flush_kernel_vmap_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flush_kernel_vmap_range_args = type { i64, i32 }

@dcache_size = common dso_local global i32 0, align 4
@R4K_INDEX = common dso_local global i32 0, align 4
@local_r4k_flush_kernel_vmap_range_index = common dso_local global i32 0, align 4
@R4K_HIT = common dso_local global i32 0, align 4
@local_r4k_flush_kernel_vmap_range = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @r4k_flush_kernel_vmap_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r4k_flush_kernel_vmap_range(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.flush_kernel_vmap_range_args, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = getelementptr inbounds %struct.flush_kernel_vmap_range_args, %struct.flush_kernel_vmap_range_args* %5, i32 0, i32 0
  store i64 %6, i64* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds %struct.flush_kernel_vmap_range_args, %struct.flush_kernel_vmap_range_args* %5, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @dcache_size, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @R4K_INDEX, align 4
  %15 = load i32, i32* @local_r4k_flush_kernel_vmap_range_index, align 4
  %16 = call i32 @r4k_on_each_cpu(i32 %14, i32 %15, %struct.flush_kernel_vmap_range_args* null)
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @R4K_HIT, align 4
  %19 = load i32, i32* @local_r4k_flush_kernel_vmap_range, align 4
  %20 = call i32 @r4k_on_each_cpu(i32 %18, i32 %19, %struct.flush_kernel_vmap_range_args* %5)
  br label %21

21:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @r4k_on_each_cpu(i32, i32, %struct.flush_kernel_vmap_range_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
