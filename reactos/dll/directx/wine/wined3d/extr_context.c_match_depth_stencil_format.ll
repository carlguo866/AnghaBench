; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_match_depth_stencil_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_match_depth_stencil_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_format = type { i32*, i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_FLOAT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_format*, %struct.wined3d_format*)* @match_depth_stencil_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_depth_stencil_format(%struct.wined3d_format* %0, %struct.wined3d_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_format*, align 8
  %5 = alloca %struct.wined3d_format*, align 8
  store %struct.wined3d_format* %0, %struct.wined3d_format** %4, align 8
  store %struct.wined3d_format* %1, %struct.wined3d_format** %5, align 8
  %6 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %7 = load %struct.wined3d_format*, %struct.wined3d_format** %5, align 8
  %8 = icmp eq %struct.wined3d_format* %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %3, align 4
  br label %58

11:                                               ; preds = %2
  %12 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %13 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WINED3DFMT_FLAG_FLOAT, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.wined3d_format*, %struct.wined3d_format** %5, align 8
  %21 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @WINED3DFMT_FLAG_FLOAT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %19, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %11
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %11
  %32 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %33 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.wined3d_format*, %struct.wined3d_format** %5, align 8
  %36 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %3, align 4
  br label %58

41:                                               ; preds = %31
  %42 = load %struct.wined3d_format*, %struct.wined3d_format** %5, align 8
  %43 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.wined3d_format*, %struct.wined3d_format** %5, align 8
  %48 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.wined3d_format*, %struct.wined3d_format** %4, align 8
  %51 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %46, %41
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %54, %39, %29, %9
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
