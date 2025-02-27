; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_i2c.c_amdgpu_i2c_put_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_i2c.c_amdgpu_i2c_put_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_i2c_chan = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"i2c 0x%02x 0x%02x write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_i2c_chan*, i32, i32, i32)* @amdgpu_i2c_put_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_i2c_put_byte(%struct.amdgpu_i2c_chan* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_i2c_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca %struct.i2c_msg, align 8
  store %struct.amdgpu_i2c_chan* %0, %struct.amdgpu_i2c_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 2, i32* %11, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32* %13, i32** %12, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_i2c_chan, %struct.amdgpu_i2c_chan* %21, i32 0, i32 0
  %23 = call i32 @i2c_transfer(i32* %22, %struct.i2c_msg* %10, i32 1)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %4
  ret void
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
