; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_gl_sc_blend.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_gl_sc_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_sc_blend(%struct.gl_shader_cache* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gl_shader_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gl_shader_cache* %0, %struct.gl_shader_cache** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %12 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %16 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %20 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %24 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %6, align 8
  %28 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i32 %26, i32* %29, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
