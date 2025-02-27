; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_tv.c_nv04_tv_identify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_tv.c_nv04_tv_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_i2c = type { i32 (%struct.nouveau_i2c*, i32, i8*, i32, i32*)* }

@.str = private unnamed_addr constant [11 x i8] c"TV encoder\00", align 1
@nv04_tv_encoder_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_tv_identify(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nouveau_i2c*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %7)
  store %struct.nouveau_drm* %8, %struct.nouveau_drm** %5, align 8
  %9 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nouveau_i2c* @nouveau_i2c(i32 %11)
  store %struct.nouveau_i2c* %12, %struct.nouveau_i2c** %6, align 8
  %13 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %6, align 8
  %14 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %13, i32 0, i32 0
  %15 = load i32 (%struct.nouveau_i2c*, i32, i8*, i32, i32*)*, i32 (%struct.nouveau_i2c*, i32, i8*, i32, i32*)** %14, align 8
  %16 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @nv04_tv_encoder_info, align 4
  %19 = call i32 %15(%struct.nouveau_i2c* %16, i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18, i32* null)
  ret i32 %19
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_i2c* @nouveau_i2c(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
