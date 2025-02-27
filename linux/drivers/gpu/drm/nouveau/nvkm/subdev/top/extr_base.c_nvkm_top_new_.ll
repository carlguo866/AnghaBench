; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/top/extr_base.c_nvkm_top_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/top/extr_base.c_nvkm_top_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_top_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_top = type { i32, %struct.nvkm_top_func*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_top = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_top_new_(%struct.nvkm_top_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_top** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_top_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_top**, align 8
  %10 = alloca %struct.nvkm_top*, align 8
  store %struct.nvkm_top_func* %0, %struct.nvkm_top_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_top** %3, %struct.nvkm_top*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nvkm_top* @kzalloc(i32 24, i32 %11)
  %13 = load %struct.nvkm_top**, %struct.nvkm_top*** %9, align 8
  store %struct.nvkm_top* %12, %struct.nvkm_top** %13, align 8
  store %struct.nvkm_top* %12, %struct.nvkm_top** %10, align 8
  %14 = icmp ne %struct.nvkm_top* %12, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %30

18:                                               ; preds = %4
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.nvkm_top*, %struct.nvkm_top** %10, align 8
  %22 = getelementptr inbounds %struct.nvkm_top, %struct.nvkm_top* %21, i32 0, i32 2
  %23 = call i32 @nvkm_subdev_ctor(i32* @nvkm_top, %struct.nvkm_device* %19, i32 %20, i32* %22)
  %24 = load %struct.nvkm_top_func*, %struct.nvkm_top_func** %6, align 8
  %25 = load %struct.nvkm_top*, %struct.nvkm_top** %10, align 8
  %26 = getelementptr inbounds %struct.nvkm_top, %struct.nvkm_top* %25, i32 0, i32 1
  store %struct.nvkm_top_func* %24, %struct.nvkm_top_func** %26, align 8
  %27 = load %struct.nvkm_top*, %struct.nvkm_top** %10, align 8
  %28 = getelementptr inbounds %struct.nvkm_top, %struct.nvkm_top* %27, i32 0, i32 0
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %18, %15
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.nvkm_top* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_subdev_ctor(i32*, %struct.nvkm_device*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
