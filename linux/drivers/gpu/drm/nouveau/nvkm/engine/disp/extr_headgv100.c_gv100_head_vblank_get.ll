; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_headgv100.c_gv100_head_vblank_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_headgv100.c_gv100_head_vblank_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_head = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_head*)* @gv100_head_vblank_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv100_head_vblank_get(%struct.nvkm_head* %0) #0 {
  %2 = alloca %struct.nvkm_head*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_head* %0, %struct.nvkm_head** %2, align 8
  %4 = load %struct.nvkm_head*, %struct.nvkm_head** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %3, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %12 = load %struct.nvkm_head*, %struct.nvkm_head** %2, align 8
  %13 = getelementptr inbounds %struct.nvkm_head, %struct.nvkm_head* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 4
  %16 = add nsw i32 6364544, %15
  %17 = call i32 @nvkm_mask(%struct.nvkm_device* %11, i32 %16, i32 4, i32 4)
  ret void
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
