; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_baseobject.c_D3D9BaseObject_GetDeviceInt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/d3d9/extr_d3d9_baseobject.c_D3D9BaseObject_GetDeviceInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@IID_IDirect3DDevice9 = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @D3D9BaseObject_GetDeviceInt(%struct.TYPE_3__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load i32**, i32*** %5, align 8
  %8 = icmp eq i32** null, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %10, i32* %3, align 4
  br label %34

11:                                               ; preds = %2
  %12 = load i32**, i32*** %5, align 8
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = bitcast i32* %6 to i8**
  %22 = call i32 @IUnknown_QueryInterface(i64 %20, i32* @IID_IDirect3DDevice9, i8** %21)
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = call i32* @IDirect3DDevice9ToImpl(i32 %28)
  %30 = load i32**, i32*** %5, align 8
  store i32* %29, i32** %30, align 8
  %31 = load i32, i32* @D3D_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %11
  %33 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %27, %25, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IUnknown_QueryInterface(i64, i32*, i8**) #1

declare dso_local i32* @IDirect3DDevice9ToImpl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
