; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_firmware.c_nvkm_firmware_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_firmware.c_nvkm_firmware_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.firmware = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_firmware_get(%struct.nvkm_subdev* %0, i8* %1, %struct.firmware** %2) #0 {
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.firmware**, align 8
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.firmware** %2, %struct.firmware*** %6, align 8
  %7 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.firmware**, %struct.firmware*** %6, align 8
  %10 = call i32 @nvkm_firmware_get_version(%struct.nvkm_subdev* %7, i8* %8, i32 0, i32 0, %struct.firmware** %9)
  ret i32 %10
}

declare dso_local i32 @nvkm_firmware_get_version(%struct.nvkm_subdev*, i8*, i32, i32, %struct.firmware**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
