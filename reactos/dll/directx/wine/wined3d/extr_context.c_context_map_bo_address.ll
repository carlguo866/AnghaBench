; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_map_bo_address.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_map_bo_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64* }
%struct.wined3d_bo_address = type { i8*, i32 }

@ARB_MAP_BUFFER_RANGE = common dso_local global i64 0, align 8
@GL_MAP_FLUSH_EXPLICIT_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Map buffer object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @context_map_bo_address(%struct.wined3d_context* %0, %struct.wined3d_bo_address* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wined3d_context*, align 8
  %8 = alloca %struct.wined3d_bo_address*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_gl_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %7, align 8
  store %struct.wined3d_bo_address* %1, %struct.wined3d_bo_address** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %16 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %21 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  br label %74

23:                                               ; preds = %5
  %24 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %25 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %24, i32 0, i32 0
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %25, align 8
  store %struct.wined3d_gl_info* %26, %struct.wined3d_gl_info** %12, align 8
  %27 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %30 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @context_bind_bo(%struct.wined3d_context* %27, i32 %28, i32 %31)
  %33 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  %34 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @ARB_MAP_BUFFER_RANGE, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %23
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @wined3d_resource_gl_map_flags(i32 %41)
  %43 = load i32, i32* @GL_MAP_FLUSH_EXPLICIT_BIT, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %48 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @glMapBufferRange(i32 %46, i32 %50, i64 %51, i32 %52)
  %54 = call i8* @GL_EXTCALL(i32 %53)
  store i8* %54, i8** %13, align 8
  br label %68

55:                                               ; preds = %23
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @wined3d_resource_gl_legacy_map_flags(i32 %57)
  %59 = call i32 @glMapBuffer(i32 %56, i32 %58)
  %60 = call i8* @GL_EXTCALL(i32 %59)
  store i8* %60, i8** %13, align 8
  %61 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %62 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = load i8*, i8** %13, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr i8, i8* %65, i64 %66
  store i8* %67, i8** %13, align 8
  br label %68

68:                                               ; preds = %55, %40
  %69 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @context_bind_bo(%struct.wined3d_context* %69, i32 %70, i32 0)
  %72 = call i32 @checkGLcall(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %73 = load i8*, i8** %13, align 8
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %68, %19
  %75 = load i8*, i8** %6, align 8
  ret i8* %75
}

declare dso_local i32 @context_bind_bo(%struct.wined3d_context*, i32, i32) #1

declare dso_local i32 @wined3d_resource_gl_map_flags(i32) #1

declare dso_local i8* @GL_EXTCALL(i32) #1

declare dso_local i32 @glMapBufferRange(i32, i32, i64, i32) #1

declare dso_local i32 @glMapBuffer(i32, i32) #1

declare dso_local i32 @wined3d_resource_gl_legacy_map_flags(i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
