; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d8_common.c_d3d8_initialize_symbols.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d8_common.c_d3d8_initialize_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDKVersion = common dso_local global i32 0, align 4
@Direct3DCreate8 = common dso_local global i64 0, align 8
@D3DCreate = common dso_local global i64 0, align 8
@D3DCreateFontIndirect = common dso_local global i64 0, align 8
@D3DCreateTextureFromFile = common dso_local global i64 0, align 8
@D3DXCreateFontIndirect = common dso_local global i64 0, align 8
@D3DXCreateTextureFromFileExA = common dso_local global i64 0, align 8
@dylib_initialized = common dso_local global i32 0, align 4
@g_d3d8_dll = common dso_local global i64 0, align 8
@g_d3d8x_dll = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3d8_initialize_symbols(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 220, i32* @SDKVersion, align 4
  %4 = load i64, i64* @Direct3DCreate8, align 8
  store i64 %4, i64* @D3DCreate, align 8
  %5 = load i64, i64* @D3DCreate, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %11

9:                                                ; preds = %7
  %10 = call i32 (...) @d3d8_deinitialize_symbols()
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %9, %8
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

declare dso_local i32 @d3d8_deinitialize_symbols(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
