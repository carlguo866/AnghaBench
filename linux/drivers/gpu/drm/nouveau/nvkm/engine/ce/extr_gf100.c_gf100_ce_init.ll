; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/ce/extr_gf100.c_gf100_ce_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/ce/extr_gf100.c_gf100_ce_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_ENGINE_CE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_falcon*)* @gf100_ce_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_ce_init(%struct.nvkm_falcon* %0) #0 {
  %2 = alloca %struct.nvkm_falcon*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %2, align 8
  %5 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  store %struct.nvkm_device* %9, %struct.nvkm_device** %3, align 8
  %10 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %2, align 8
  %11 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NVKM_ENGINE_CE0, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %18 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %2, align 8
  %19 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 132
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @nvkm_wr32(%struct.nvkm_device* %17, i64 %21, i32 %22)
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
