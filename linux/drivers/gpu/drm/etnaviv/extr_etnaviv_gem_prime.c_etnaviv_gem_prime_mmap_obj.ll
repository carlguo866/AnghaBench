; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_prime.c_etnaviv_gem_prime_mmap_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_prime.c_etnaviv_gem_prime_mmap_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gem_object*, %struct.vm_area_struct*)* @etnaviv_gem_prime_mmap_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_gem_prime_mmap_obj(%struct.etnaviv_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.etnaviv_gem_object*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.etnaviv_gem_object* %0, %struct.etnaviv_gem_object** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %5 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %6 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = call i32 @dma_buf_mmap(i32 %8, %struct.vm_area_struct* %9, i32 0)
  ret i32 %10
}

declare dso_local i32 @dma_buf_mmap(i32, %struct.vm_area_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
