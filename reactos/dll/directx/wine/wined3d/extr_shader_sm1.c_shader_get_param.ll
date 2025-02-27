; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_get_param.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_sm1_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WINED3D_SM1_ADDRESS_MODE_RELATIVE = common dso_local global i32 0, align 4
@WINED3DSPR_ADDR = common dso_local global i32 0, align 4
@WINED3D_SM1_REGISTER_TYPE_SHIFT2 = common dso_local global i32 0, align 4
@WINED3D_SM1_REGISTER_TYPE_MASK2 = common dso_local global i32 0, align 4
@WINED3D_SM1_REGISTER_TYPE_SHIFT = common dso_local global i32 0, align 4
@WINED3D_SM1_REGISTER_TYPE_MASK = common dso_local global i32 0, align 4
@WINED3DSP_NOSWIZZLE = common dso_local global i32 0, align 4
@WINED3D_SM1_SWIZZLE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_sm1_data*, i32*, i32*, i32*)* @shader_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_get_param(%struct.wined3d_sm1_data* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.wined3d_sm1_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.wined3d_sm1_data* %0, %struct.wined3d_sm1_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 1, i32* %9, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WINED3D_SM1_ADDRESS_MODE_RELATIVE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %4
  %19 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load i32, i32* @WINED3DSPR_ADDR, align 4
  %26 = load i32, i32* @WINED3D_SM1_REGISTER_TYPE_SHIFT2, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* @WINED3D_SM1_REGISTER_TYPE_MASK2, align 4
  %29 = and i32 %27, %28
  %30 = or i32 -2147483648, %29
  %31 = load i32, i32* @WINED3DSPR_ADDR, align 4
  %32 = load i32, i32* @WINED3D_SM1_REGISTER_TYPE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @WINED3D_SM1_REGISTER_TYPE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %30, %35
  %37 = load i32, i32* @WINED3DSP_NOSWIZZLE, align 4
  %38 = load i32, i32* @WINED3D_SM1_SWIZZLE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %49

42:                                               ; preds = %18
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %42, %24
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
