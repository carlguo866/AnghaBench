; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_gp100.c_gp100_mmu_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_gp100.c_gp100_mmu_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_mmu = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"GP100MmuLayout\00", align 1
@gp100_mmu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gp100_mmu_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_mmu** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_mmu**, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_mmu** %2, %struct.nvkm_mmu*** %7, align 8
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %9 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @nvkm_boolopt(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.nvkm_mmu**, %struct.nvkm_mmu*** %7, align 8
  %17 = call i32 @gm200_mmu_new(%struct.nvkm_device* %14, i32 %15, %struct.nvkm_mmu** %16)
  store i32 %17, i32* %4, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.nvkm_mmu**, %struct.nvkm_mmu*** %7, align 8
  %22 = call i32 @nvkm_mmu_new_(i32* @gp100_mmu, %struct.nvkm_device* %19, i32 %20, %struct.nvkm_mmu** %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @nvkm_boolopt(i32, i8*, i32) #1

declare dso_local i32 @gm200_mmu_new(%struct.nvkm_device*, i32, %struct.nvkm_mmu**) #1

declare dso_local i32 @nvkm_mmu_new_(i32*, %struct.nvkm_device*, i32, %struct.nvkm_mmu**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
