; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gsp/extr_gv100.c_gv100_gsp_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gsp/extr_gv100.c_gv100_gsp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_gsp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gv100_gsp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv100_gsp_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_gsp** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_gsp**, align 8
  %8 = alloca %struct.nvkm_gsp*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_gsp** %2, %struct.nvkm_gsp*** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nvkm_gsp* @kzalloc(i32 4, i32 %9)
  %11 = load %struct.nvkm_gsp**, %struct.nvkm_gsp*** %7, align 8
  store %struct.nvkm_gsp* %10, %struct.nvkm_gsp** %11, align 8
  store %struct.nvkm_gsp* %10, %struct.nvkm_gsp** %8, align 8
  %12 = icmp ne %struct.nvkm_gsp* %10, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %22

16:                                               ; preds = %3
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.nvkm_gsp*, %struct.nvkm_gsp** %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_gsp, %struct.nvkm_gsp* %19, i32 0, i32 0
  %21 = call i32 @nvkm_subdev_ctor(i32* @gv100_gsp, %struct.nvkm_device* %17, i32 %18, i32* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.nvkm_gsp* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_subdev_ctor(i32*, %struct.nvkm_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
