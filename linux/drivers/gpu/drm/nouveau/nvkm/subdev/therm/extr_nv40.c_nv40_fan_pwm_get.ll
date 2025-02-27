; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_nv40.c_nv40_fan_pwm_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_nv40.c_nv40_fan_pwm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"unknown pwm ctrl for gpio %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_therm*, i32, i32*, i32*)* @nv40_fan_pwm_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_fan_pwm_get(%struct.nvkm_therm* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_therm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvkm_subdev*, align 8
  %11 = alloca %struct.nvkm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.nvkm_therm*, %struct.nvkm_therm** %6, align 8
  %15 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %14, i32 0, i32 0
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %10, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %36

21:                                               ; preds = %4
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 4336)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = and i32 %24, -2147483648
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, 2147418112
  %30 = ashr i32 %29, 16
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, 32767
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %5, align 4
  br label %63

35:                                               ; preds = %21
  br label %60

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 9
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %41 = call i32 @nvkm_rd32(%struct.nvkm_device* %40, i32 5620)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %42, -2147483648
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %47 = call i32 @nvkm_rd32(%struct.nvkm_device* %46, i32 5624)
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %13, align 4
  %50 = and i32 %49, 2147483647
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %63

52:                                               ; preds = %39
  br label %59

53:                                               ; preds = %36
  %54 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %10, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @nvkm_error(%struct.nvkm_subdev* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %63

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %35
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %53, %45, %27
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
