; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_gl_sc_enable_extension.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_gl_sc_enable_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_cache = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_sc_enable_extension(%struct.gl_shader_cache* %0, i8* %1) #0 {
  %3 = alloca %struct.gl_shader_cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.gl_shader_cache* %0, %struct.gl_shader_cache** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %9 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %14 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %40

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %6
  %29 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %30 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %31 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %34 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @talloc_strdup(%struct.gl_shader_cache* %36, i8* %37)
  %39 = call i32 @MP_TARRAY_APPEND(%struct.gl_shader_cache* %29, i32* %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %28, %23
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.gl_shader_cache*, i32*, i32, i32) #1

declare dso_local i32 @talloc_strdup(%struct.gl_shader_cache*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
