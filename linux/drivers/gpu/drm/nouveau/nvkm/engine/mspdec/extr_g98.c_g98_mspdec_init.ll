; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mspdec/extr_g98.c_g98_mspdec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mspdec/extr_g98.c_g98_mspdec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g98_mspdec_init(%struct.nvkm_falcon* %0) #0 {
  %2 = alloca %struct.nvkm_falcon*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %2, align 8
  %4 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_device* %8, %struct.nvkm_device** %3, align 8
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %10 = call i32 @nvkm_wr32(%struct.nvkm_device* %9, i32 544784, i32 65490)
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %12 = call i32 @nvkm_wr32(%struct.nvkm_device* %11, i32 544796, i32 65522)
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
