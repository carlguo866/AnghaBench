; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_setup_ksp_vsid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c_setup_ksp_vsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.task_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MMU_FTR_1T_SEGMENT = common dso_local global i32 0, align 4
@MMU_SEGSIZE_1T = common dso_local global i32 0, align 4
@MMU_SEGSIZE_256M = common dso_local global i32 0, align 4
@SLB_VSID_KERNEL = common dso_local global i64 0, align 8
@SLB_VSID_SHIFT = common dso_local global i64 0, align 8
@SLB_VSID_SHIFT_1T = common dso_local global i64 0, align 8
@mmu_linear_psize = common dso_local global i64 0, align 8
@mmu_psize_defs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i64)* @setup_ksp_vsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_ksp_vsid(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
