; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_mmu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_mmu*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @nvkm_mmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_mmu_init(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca %struct.nvkm_subdev*, align 8
  %3 = alloca %struct.nvkm_mmu*, align 8
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %2, align 8
  %4 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %5 = call %struct.nvkm_mmu* @nvkm_mmu(%struct.nvkm_subdev* %4)
  store %struct.nvkm_mmu* %5, %struct.nvkm_mmu** %3, align 8
  %6 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.nvkm_mmu*)*, i32 (%struct.nvkm_mmu*)** %9, align 8
  %11 = icmp ne i32 (%struct.nvkm_mmu*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %3, align 8
  %14 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.nvkm_mmu*)*, i32 (%struct.nvkm_mmu*)** %16, align 8
  %18 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %3, align 8
  %19 = call i32 %17(%struct.nvkm_mmu* %18)
  br label %20

20:                                               ; preds = %12, %1
  ret i32 0
}

declare dso_local %struct.nvkm_mmu* @nvkm_mmu(%struct.nvkm_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
