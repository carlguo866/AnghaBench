; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_st_push_constants.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_st_push_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.wined3d_cs = type { i32, %struct.wined3d_device* }
%struct.wined3d_device = type { i32, %struct.TYPE_5__**, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.wined3d_device*, i32, i32)*, i32 (%struct.wined3d_device*, i32, i32)* }

@WINED3D_PUSH_CONSTANTS_VS_F = common dso_local global i32 0, align 4
@WINED3D_PUSH_CONSTANTS_PS_F = common dso_local global i32 0, align 4
@wined3d_cs_push_constant_info = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i32, i32, i32, i8*)* @wined3d_cs_st_push_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_st_push_constants(%struct.wined3d_cs* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.wined3d_cs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.wined3d_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load %struct.wined3d_cs*, %struct.wined3d_cs** %6, align 8
  %16 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %15, i32 0, i32 1
  %17 = load %struct.wined3d_device*, %struct.wined3d_device** %16, align 8
  store %struct.wined3d_device* %17, %struct.wined3d_device** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @WINED3D_PUSH_CONSTANTS_VS_F, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %5
  %22 = load %struct.wined3d_device*, %struct.wined3d_device** %11, align 8
  %23 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32 (%struct.wined3d_device*, i32, i32)*, i32 (%struct.wined3d_device*, i32, i32)** %25, align 8
  %27 = load %struct.wined3d_device*, %struct.wined3d_device** %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 %26(%struct.wined3d_device* %27, i32 %28, i32 %29)
  br label %46

31:                                               ; preds = %5
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @WINED3D_PUSH_CONSTANTS_PS_F, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.wined3d_device*, %struct.wined3d_device** %11, align 8
  %37 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.wined3d_device*, i32, i32)*, i32 (%struct.wined3d_device*, i32, i32)** %39, align 8
  %41 = load %struct.wined3d_device*, %struct.wined3d_device** %11, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 %40(%struct.wined3d_device* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %31
  br label %46

46:                                               ; preds = %45, %21
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wined3d_cs_push_constant_info, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wined3d_cs_push_constant_info, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul i32 %53, %59
  %61 = add i32 %52, %60
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %14, align 8
  %63 = load %struct.wined3d_cs*, %struct.wined3d_cs** %6, align 8
  %64 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %63, i32 0, i32 0
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wined3d_cs_push_constant_info, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul i32 %68, %74
  %76 = call i32 @memcpy(i32* %66, i8* %67, i32 %75)
  store i32 0, i32* %13, align 4
  %77 = load %struct.wined3d_device*, %struct.wined3d_device** %11, align 8
  %78 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %101, %46
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wined3d_cs_push_constant_info, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wined3d_device*, %struct.wined3d_device** %11, align 8
  %92 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %93, i64 %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %90
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %84
  %102 = load i32, i32* %13, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %80

104:                                              ; preds = %80
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
