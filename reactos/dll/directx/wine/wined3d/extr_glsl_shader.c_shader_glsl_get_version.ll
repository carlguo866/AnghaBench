; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_version.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_gl_info*)* @shader_glsl_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_get_version(%struct.wined3d_gl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  %4 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %5 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @MAKEDWORD_VERSION(i32 4, i32 40)
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 440, i32* %2, align 4
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @MAKEDWORD_VERSION(i32 1, i32 50)
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 150, i32* %2, align 4
  br label %25

17:                                               ; preds = %10
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %19 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @MAKEDWORD_VERSION(i32 1, i32 30)
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 130, i32* %2, align 4
  br label %25

24:                                               ; preds = %17
  store i32 120, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %16, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @MAKEDWORD_VERSION(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
