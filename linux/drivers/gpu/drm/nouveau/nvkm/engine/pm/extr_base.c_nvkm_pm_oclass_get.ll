; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_pm_oclass_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_pm_oclass_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device_oclass = type { i32 }
%struct.nvkm_oclass = type { i32 }

@nvkm_pm_oclass = common dso_local global %struct.nvkm_device_oclass zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_oclass*, i32, %struct.nvkm_device_oclass**)* @nvkm_pm_oclass_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_pm_oclass_get(%struct.nvkm_oclass* %0, i32 %1, %struct.nvkm_device_oclass** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_oclass*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_device_oclass**, align 8
  store %struct.nvkm_oclass* %0, %struct.nvkm_oclass** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_device_oclass** %2, %struct.nvkm_device_oclass*** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32, i32* getelementptr inbounds (%struct.nvkm_device_oclass, %struct.nvkm_device_oclass* @nvkm_pm_oclass, i32 0, i32 0), align 4
  %12 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.nvkm_device_oclass**, %struct.nvkm_device_oclass*** %7, align 8
  store %struct.nvkm_device_oclass* @nvkm_pm_oclass, %struct.nvkm_device_oclass** %14, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %4, align 4
  br label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %17

17:                                               ; preds = %16, %10
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
