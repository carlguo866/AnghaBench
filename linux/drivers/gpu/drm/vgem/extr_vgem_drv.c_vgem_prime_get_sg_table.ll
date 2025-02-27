; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c_vgem_prime_get_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_drv.c_vgem_prime_get_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_vgem_gem_object = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.drm_gem_object*)* @vgem_prime_get_sg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @vgem_prime_get_sg_table(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.drm_vgem_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %4 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %5 = call %struct.drm_vgem_gem_object* @to_vgem_bo(%struct.drm_gem_object* %4)
  store %struct.drm_vgem_gem_object* %5, %struct.drm_vgem_gem_object** %3, align 8
  %6 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %7 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.drm_vgem_gem_object*, %struct.drm_vgem_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.drm_vgem_gem_object, %struct.drm_vgem_gem_object* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = call %struct.sg_table* @drm_prime_pages_to_sg(i32 %8, i32 %14)
  ret %struct.sg_table* %15
}

declare dso_local %struct.drm_vgem_gem_object* @to_vgem_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.sg_table* @drm_prime_pages_to_sg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
