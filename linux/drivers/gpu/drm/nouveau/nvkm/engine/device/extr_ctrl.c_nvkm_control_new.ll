; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_ctrl.c_nvkm_control_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/device/extr_ctrl.c_nvkm_control_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_control = type { %struct.nvkm_object, %struct.nvkm_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_device*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* @nvkm_control_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_control_new(%struct.nvkm_device* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_object** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_object**, align 8
  %12 = alloca %struct.nvkm_control*, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_object** %4, %struct.nvkm_object*** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.nvkm_control* @kzalloc(i32 16, i32 %13)
  store %struct.nvkm_control* %14, %struct.nvkm_control** %12, align 8
  %15 = icmp ne %struct.nvkm_control* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %30

19:                                               ; preds = %5
  %20 = load %struct.nvkm_control*, %struct.nvkm_control** %12, align 8
  %21 = getelementptr inbounds %struct.nvkm_control, %struct.nvkm_control* %20, i32 0, i32 0
  %22 = load %struct.nvkm_object**, %struct.nvkm_object*** %11, align 8
  store %struct.nvkm_object* %21, %struct.nvkm_object** %22, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %24 = load %struct.nvkm_control*, %struct.nvkm_control** %12, align 8
  %25 = getelementptr inbounds %struct.nvkm_control, %struct.nvkm_control* %24, i32 0, i32 1
  store %struct.nvkm_device* %23, %struct.nvkm_device** %25, align 8
  %26 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %27 = load %struct.nvkm_control*, %struct.nvkm_control** %12, align 8
  %28 = getelementptr inbounds %struct.nvkm_control, %struct.nvkm_control* %27, i32 0, i32 0
  %29 = call i32 @nvkm_object_ctor(i32* @nvkm_control, %struct.nvkm_oclass* %26, %struct.nvkm_object* %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %19, %16
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local %struct.nvkm_control* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
