; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-helpers.c_gl_copy_fbo.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-helpers.c_gl_copy_fbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_texture = type { i32, i32 }
%struct.fbo_info = type { i32 }

@GL_READ_FRAMEBUFFER_BINDING = common dso_local global i32 0, align 4
@GL_READ_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"glFrameBufferTexture2D\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"glReadBuffer\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"glCopyTexSubImage2D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_texture*, i32, i32, %struct.gs_texture*, i32, i32, i32, i32)* @gl_copy_fbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_copy_fbo(%struct.gs_texture* %0, i32 %1, i32 %2, %struct.gs_texture* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.gs_texture*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gs_texture*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fbo_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.gs_texture* %0, %struct.gs_texture** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.gs_texture* %3, %struct.gs_texture** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = load %struct.gs_texture*, %struct.gs_texture** %13, align 8
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %17, align 4
  %24 = call %struct.fbo_info* @get_fbo(%struct.gs_texture* %21, i32 %22, i32 %23)
  store %struct.fbo_info* %24, %struct.fbo_info** %18, align 8
  store i32 0, i32* %20, align 4
  %25 = load %struct.fbo_info*, %struct.fbo_info** %18, align 8
  %26 = icmp ne %struct.fbo_info* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %102

28:                                               ; preds = %8
  %29 = load i32, i32* @GL_READ_FRAMEBUFFER_BINDING, align 4
  %30 = call i32 @gl_get_integer_v(i32 %29, i32* %19)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %102

33:                                               ; preds = %28
  %34 = load i32, i32* @GL_READ_FRAMEBUFFER, align 4
  %35 = load %struct.fbo_info*, %struct.fbo_info** %18, align 8
  %36 = getelementptr inbounds %struct.fbo_info, %struct.fbo_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gl_bind_framebuffer(i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %102

41:                                               ; preds = %33
  %42 = load %struct.gs_texture*, %struct.gs_texture** %10, align 8
  %43 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.gs_texture*, %struct.gs_texture** %10, align 8
  %46 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gl_bind_texture(i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %87

51:                                               ; preds = %41
  %52 = load i32, i32* @GL_READ_FRAMEBUFFER, align 4
  %53 = load i64, i64* @GL_COLOR_ATTACHMENT0, align 8
  %54 = add nsw i64 %53, 0
  %55 = load %struct.gs_texture*, %struct.gs_texture** %13, align 8
  %56 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.gs_texture*, %struct.gs_texture** %13, align 8
  %59 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @glFramebufferTexture2D(i32 %52, i64 %54, i32 %57, i32 %60, i32 0)
  %62 = call i32 @gl_success(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %51
  br label %87

65:                                               ; preds = %51
  %66 = load i64, i64* @GL_COLOR_ATTACHMENT0, align 8
  %67 = add nsw i64 %66, 0
  %68 = call i32 @glReadBuffer(i64 %67)
  %69 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %87

72:                                               ; preds = %65
  %73 = load %struct.gs_texture*, %struct.gs_texture** %10, align 8
  %74 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @glCopyTexSubImage2D(i32 %75, i32 0, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = call i32 @gl_success(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %72
  br label %87

86:                                               ; preds = %72
  store i32 1, i32* %20, align 4
  br label %87

87:                                               ; preds = %86, %85, %71, %64, %50
  %88 = load %struct.gs_texture*, %struct.gs_texture** %10, align 8
  %89 = getelementptr inbounds %struct.gs_texture, %struct.gs_texture* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @gl_bind_texture(i32 %90, i32 0)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  store i32 0, i32* %20, align 4
  br label %94

94:                                               ; preds = %93, %87
  %95 = load i32, i32* @GL_READ_FRAMEBUFFER, align 4
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @gl_bind_framebuffer(i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i32 0, i32* %20, align 4
  br label %100

100:                                              ; preds = %99, %94
  %101 = load i32, i32* %20, align 4
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %40, %32, %27
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local %struct.fbo_info* @get_fbo(%struct.gs_texture*, i32, i32) #1

declare dso_local i32 @gl_get_integer_v(i32, i32*) #1

declare dso_local i32 @gl_bind_framebuffer(i32, i32) #1

declare dso_local i32 @gl_bind_texture(i32, i32) #1

declare dso_local i32 @glFramebufferTexture2D(i32, i64, i32, i32, i32) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @glReadBuffer(i64) #1

declare dso_local i32 @glCopyTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
