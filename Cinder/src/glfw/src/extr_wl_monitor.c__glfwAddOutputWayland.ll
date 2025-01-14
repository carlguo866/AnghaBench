; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_monitor.c__glfwAddOutputWayland.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_monitor.c__glfwAddOutputWayland.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__**, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, %struct.wl_output*, i32 }
%struct.wl_output = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"wl_output@%u\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Wayland: Unsupported output interface version\00", align 1
@_glfw = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@wl_output_interface = common dso_local global i32 0, align 4
@output_listener = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwAddOutputWayland(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.wl_output*, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 0, i32 80)
  %12 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @snprintf(i8* %12, i32 79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %19 = call i32 @_glfwInputError(i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %72

20:                                               ; preds = %2
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %22 = call %struct.TYPE_12__* @_glfwAllocMonitor(i8* %21, i32 0, i32 0)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %5, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 3), align 8
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.wl_output* @wl_registry_bind(i32 %23, i32 %24, i32* @wl_output_interface, i32 2)
  store %struct.wl_output* %25, %struct.wl_output** %6, align 8
  %26 = load %struct.wl_output*, %struct.wl_output** %6, align 8
  %27 = icmp ne %struct.wl_output* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = call i32 @_glfwFreeMonitor(%struct.TYPE_12__* %29)
  br label %72

31:                                               ; preds = %20
  %32 = call i32 @calloc(i32 4, i32 4)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 4, i32* %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.wl_output*, %struct.wl_output** %6, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  store %struct.wl_output* %42, %struct.wl_output** %45, align 8
  %46 = load %struct.wl_output*, %struct.wl_output** %6, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = call i32 @wl_output_add_listener(%struct.wl_output* %46, i32* @output_listener, %struct.TYPE_12__* %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1), align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %31
  %54 = load %struct.TYPE_12__**, %struct.TYPE_12__*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 2), align 8
  store %struct.TYPE_12__** %54, %struct.TYPE_12__*** %8, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1), align 4
  %56 = mul nsw i32 %55, 2
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = call %struct.TYPE_12__** @realloc(%struct.TYPE_12__** %57, i32 %61)
  store %struct.TYPE_12__** %62, %struct.TYPE_12__*** %8, align 8
  %63 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__** %63, %struct.TYPE_12__*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 2), align 8
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 1), align 4
  br label %65

65:                                               ; preds = %53, %31
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = load %struct.TYPE_12__**, %struct.TYPE_12__*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 2), align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @_glfw, i32 0, i32 0, i32 0), align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %67, i64 %70
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %71, align 8
  br label %72

72:                                               ; preds = %65, %28, %17
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @_glfwAllocMonitor(i8*, i32, i32) #1

declare dso_local %struct.wl_output* @wl_registry_bind(i32, i32, i32*, i32) #1

declare dso_local i32 @_glfwFreeMonitor(%struct.TYPE_12__*) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @wl_output_add_listener(%struct.wl_output*, i32*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__** @realloc(%struct.TYPE_12__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
