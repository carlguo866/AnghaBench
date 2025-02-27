; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-vertexbuffer.c_get_vb_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-vertexbuffer.c_get_vb_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_vertex_buffer = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_3__ = type { i64* }

@GL_FLOAT = common dso_local global i32 0, align 4
@ATTRIB_POSITION = common dso_local global i32 0, align 4
@ATTRIB_NORMAL = common dso_local global i32 0, align 4
@ATTRIB_TANGENT = common dso_local global i32 0, align 4
@ATTRIB_COLOR = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@ATTRIB_TEXCOORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_vertex_buffer*, i32, i64, i32*, i32*)* @get_vb_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vb_buffer(%struct.gs_vertex_buffer* %0, i32 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gs_vertex_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.gs_vertex_buffer* %0, %struct.gs_vertex_buffer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* @GL_FLOAT, align 4
  %13 = load i32*, i32** %11, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %10, align 8
  store i32 4, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ATTRIB_POSITION, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %7, align 8
  %20 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  br label %82

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ATTRIB_NORMAL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  br label %82

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ATTRIB_TANGENT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %7, align 8
  %36 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %82

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ATTRIB_COLOR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %7, align 8
  %46 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %6, align 4
  br label %82

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ATTRIB_TEXCOORD, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %7, align 8
  %54 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ule i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %82

60:                                               ; preds = %52
  %61 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %7, align 8
  %62 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.gs_vertex_buffer*, %struct.gs_vertex_buffer** %7, align 8
  %71 = getelementptr inbounds %struct.gs_vertex_buffer, %struct.gs_vertex_buffer* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %6, align 4
  br label %82

77:                                               ; preds = %48
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %60, %59, %42, %34, %26, %18
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
