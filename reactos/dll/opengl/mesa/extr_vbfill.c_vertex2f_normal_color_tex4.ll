; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_vertex2f_normal_color_tex4.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbfill.c_vertex2f_normal_color_tex4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.vertex_buffer* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.vertex_buffer = type { i64, i32*, i32*, i32*, i32*, i32* }

@VB_MAX = common dso_local global i64 0, align 8
@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @vertex2f_normal_color_tex4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vertex2f_normal_color_tex4(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vertex_buffer*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.vertex_buffer*, %struct.vertex_buffer** %10, align 8
  store %struct.vertex_buffer* %11, %struct.vertex_buffer** %7, align 8
  %12 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %13 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %16 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ASSIGN_3V(i32 %20, i32 %21, i32 %22, float 0.000000e+00)
  %24 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %25 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @COPY_4UBV(i32 %29, i32 %33)
  %35 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %36 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @COPY_3V(i32 %40, i32 %44)
  %46 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %47 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @COPY_4V(i32 %51, i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %62 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.vertex_buffer*, %struct.vertex_buffer** %7, align 8
  %70 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @VB_MAX, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %76 = load i32, i32* @GL_FALSE, align 4
  %77 = call i32 @gl_transform_vb_part1(%struct.TYPE_6__* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %3
  ret void
}

declare dso_local i32 @ASSIGN_3V(i32, i32, i32, float) #1

declare dso_local i32 @COPY_4UBV(i32, i32) #1

declare dso_local i32 @COPY_3V(i32, i32) #1

declare dso_local i32 @COPY_4V(i32, i32) #1

declare dso_local i32 @gl_transform_vb_part1(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
