; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_rootgm200.c_gm200_disp_root_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_rootgm200.c_gm200_disp_root_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_disp = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }

@gm200_disp_root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_disp*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* @gm200_disp_root_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm200_disp_root_new(%struct.nvkm_disp* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_object** %4) #0 {
  %6 = alloca %struct.nvkm_disp*, align 8
  %7 = alloca %struct.nvkm_oclass*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_object**, align 8
  store %struct.nvkm_disp* %0, %struct.nvkm_disp** %6, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.nvkm_object** %4, %struct.nvkm_object*** %10, align 8
  %11 = load %struct.nvkm_disp*, %struct.nvkm_disp** %6, align 8
  %12 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.nvkm_object**, %struct.nvkm_object*** %10, align 8
  %16 = call i32 @nv50_disp_root_new_(i32* @gm200_disp_root, %struct.nvkm_disp* %11, %struct.nvkm_oclass* %12, i8* %13, i32 %14, %struct.nvkm_object** %15)
  ret i32 %16
}

declare dso_local i32 @nv50_disp_root_new_(i32*, %struct.nvkm_disp*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
