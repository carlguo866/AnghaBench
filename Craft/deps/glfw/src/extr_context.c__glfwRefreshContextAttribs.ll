; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_context.c__glfwRefreshContextAttribs.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_context.c__glfwRefreshContextAttribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 (i32, i32*)*, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"glGetIntegerv\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"glGetString\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"glClear\00", align 1
@GL_FALSE = common dso_local global i8* null, align 8
@GL_TRUE = common dso_local global i8* null, align 8
@GLFW_LOSE_CONTEXT_ON_RESET = common dso_local global i8* null, align 8
@GLFW_NO_RESET_NOTIFICATION = common dso_local global i8* null, align 8
@GLFW_OPENGL_API = common dso_local global i64 0, align 8
@GLFW_OPENGL_COMPAT_PROFILE = common dso_local global i8* null, align 8
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i8* null, align 8
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_FLUSH = common dso_local global i32 0, align 4
@GLFW_RELEASE_BEHAVIOR_NONE = common dso_local global i32 0, align 4
@GL_CONTEXT_COMPATIBILITY_PROFILE_BIT = common dso_local global i32 0, align 4
@GL_CONTEXT_CORE_PROFILE_BIT = common dso_local global i32 0, align 4
@GL_CONTEXT_FLAGS = common dso_local global i32 0, align 4
@GL_CONTEXT_FLAG_DEBUG_BIT = common dso_local global i32 0, align 4
@GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT = common dso_local global i32 0, align 4
@GL_CONTEXT_PROFILE_MASK = common dso_local global i32 0, align 4
@GL_CONTEXT_RELEASE_BEHAVIOR = common dso_local global i32 0, align 4
@GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = common dso_local global i32 0, align 4
@GL_LOSE_CONTEXT_ON_RESET_ARB = common dso_local global i32 0, align 4
@GL_NONE = common dso_local global i32 0, align 4
@GL_NO_RESET_NOTIFICATION_ARB = common dso_local global i32 0, align 4
@GL_RESET_NOTIFICATION_STRATEGY_ARB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_glfwRefreshContextAttribs(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = call %struct.TYPE_7__* (...) @_glfwPlatformGetCurrentContext()
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %4, align 8
  %6 = call i64 @glfwGetProcAddress(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = inttoptr i64 %6 to i32 (i32, i32*)*
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 (i32, i32*)* %7, i32 (i32, i32*)** %9, align 8
  %10 = call i64 @glfwGetProcAddress(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  store i64 %10, i64* %12, align 8
  %13 = call i64 @glfwGetProcAddress(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 8
  %28 = call i32 @parseVersionString(i64* %18, i32* %21, i32* %24, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = load i8*, i8** @GL_FALSE, align 8
  store i8* %31, i8** %2, align 8
  br label %34

32:                                               ; preds = %1
  %33 = load i8*, i8** @GL_TRUE, align 8
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local %struct.TYPE_7__* @_glfwPlatformGetCurrentContext(...) #1

declare dso_local i64 @glfwGetProcAddress(i8*) #1

declare dso_local i32 @parseVersionString(i64*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
