; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_lookup_i2c_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atombios.c_amdgpu_atombios_lookup_i2c_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.atom_context* }
%struct.atom_context = type { i32 }
%struct.amdgpu_i2c_bus_rec = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct._ATOM_GPIO_I2C_INFO = type { %struct.TYPE_8__* }

@DATA = common dso_local global i32 0, align 4
@GPIO_I2C_Info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_lookup_i2c_gpio(%struct.amdgpu_device* %0, i64 %1) #0 {
  %3 = alloca %struct.amdgpu_i2c_bus_rec, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.atom_context*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._ATOM_GPIO_I2C_INFO*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_i2c_bus_rec, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.atom_context*, %struct.atom_context** %17, align 8
  store %struct.atom_context* %18, %struct.atom_context** %6, align 8
  %19 = load i32, i32* @DATA, align 4
  %20 = load i32, i32* @GPIO_I2C_Info, align 4
  %21 = call i32 @GetIndexIntoMasterTable(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = call i32 @memset(%struct.amdgpu_i2c_bus_rec* %3, i32 0, i32 4)
  %23 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %3, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @amdgpu_atom_parse_data_header(%struct.atom_context* %24, i32 %25, i32* %11, i32* null, i32* null, i32* %10)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %2
  %29 = load %struct.atom_context*, %struct.atom_context** %6, align 8
  %30 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct._ATOM_GPIO_I2C_INFO*
  store %struct._ATOM_GPIO_I2C_INFO* %35, %struct._ATOM_GPIO_I2C_INFO** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 4
  %39 = udiv i64 %38, 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %13, align 4
  %41 = load %struct._ATOM_GPIO_I2C_INFO*, %struct._ATOM_GPIO_I2C_INFO** %9, align 8
  %42 = getelementptr inbounds %struct._ATOM_GPIO_I2C_INFO, %struct._ATOM_GPIO_I2C_INFO* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 0
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %71, %28
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @amdgpu_atombios_lookup_i2c_gpio_quirks(%struct.amdgpu_device* %50, %struct.TYPE_8__* %51, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = call i32 @amdgpu_atombios_get_bus_rec_for_i2c_gpio(%struct.TYPE_8__* %61)
  %63 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %14, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = bitcast %struct.amdgpu_i2c_bus_rec* %3 to i8*
  %65 = bitcast %struct.amdgpu_i2c_bus_rec* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  br label %74

66:                                               ; preds = %49
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = bitcast %struct.TYPE_8__* %67 to i32*
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  %70 = bitcast i32* %69 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %7, align 8
  br label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %45

74:                                               ; preds = %60, %45
  br label %75

75:                                               ; preds = %74, %2
  %76 = getelementptr inbounds %struct.amdgpu_i2c_bus_rec, %struct.amdgpu_i2c_bus_rec* %3, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  ret i32 %77
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.amdgpu_i2c_bus_rec*, i32, i32) #1

declare dso_local i64 @amdgpu_atom_parse_data_header(%struct.atom_context*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @amdgpu_atombios_lookup_i2c_gpio_quirks(%struct.amdgpu_device*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @amdgpu_atombios_get_bus_rec_for_i2c_gpio(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
