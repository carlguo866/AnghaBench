; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ptes_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ptes_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_vmm_page = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"unref\00", align 1
@nvkm_vmm_unref_ptes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i32, i32)* @nvkm_vmm_ptes_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_vmm_ptes_put(%struct.nvkm_vmm* %0, %struct.nvkm_vmm_page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_vmm*, align 8
  %6 = alloca %struct.nvkm_vmm_page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %5, align 8
  store %struct.nvkm_vmm_page* %1, %struct.nvkm_vmm_page** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %5, align 8
  %10 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @nvkm_vmm_unref_ptes, align 4
  %14 = call i32 @nvkm_vmm_iter(%struct.nvkm_vmm* %9, %struct.nvkm_vmm_page* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %13, i32* null, i32* null, i32* null)
  ret void
}

declare dso_local i32 @nvkm_vmm_iter(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i32, i32, i8*, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
