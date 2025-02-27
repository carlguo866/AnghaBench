; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformCreateStandardCursor.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_window.c__glfwPlatformCreateStandardCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GLFW_ARROW_CURSOR = common dso_local global i32 0, align 4
@XC_left_ptr = common dso_local global i32 0, align 4
@GLFW_IBEAM_CURSOR = common dso_local global i32 0, align 4
@XC_xterm = common dso_local global i32 0, align 4
@GLFW_CROSSHAIR_CURSOR = common dso_local global i32 0, align 4
@XC_crosshair = common dso_local global i32 0, align 4
@GLFW_HAND_CURSOR = common dso_local global i32 0, align 4
@XC_hand2 = common dso_local global i32 0, align 4
@GLFW_HRESIZE_CURSOR = common dso_local global i32 0, align 4
@XC_sb_h_double_arrow = common dso_local global i32 0, align 4
@GLFW_VRESIZE_CURSOR = common dso_local global i32 0, align 4
@XC_sb_v_double_arrow = common dso_local global i32 0, align 4
@GLFW_FALSE = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"X11: Failed to create standard cursor\00", align 1
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformCreateStandardCursor(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @GLFW_ARROW_CURSOR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @XC_left_ptr, align 4
  store i32 %11, i32* %6, align 4
  br label %49

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GLFW_IBEAM_CURSOR, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @XC_xterm, align 4
  store i32 %17, i32* %6, align 4
  br label %48

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GLFW_CROSSHAIR_CURSOR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @XC_crosshair, align 4
  store i32 %23, i32* %6, align 4
  br label %47

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GLFW_HAND_CURSOR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @XC_hand2, align 4
  store i32 %29, i32* %6, align 4
  br label %46

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @GLFW_HRESIZE_CURSOR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @XC_sb_h_double_arrow, align 4
  store i32 %35, i32* %6, align 4
  br label %45

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @GLFW_VRESIZE_CURSOR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @XC_sb_v_double_arrow, align 4
  store i32 %41, i32* %6, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %67

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %34
  br label %46

46:                                               ; preds = %45, %28
  br label %47

47:                                               ; preds = %46, %22
  br label %48

48:                                               ; preds = %47, %16
  br label %49

49:                                               ; preds = %48, %10
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @_glfw, i32 0, i32 0, i32 0), align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @XCreateFontCursor(i32 %50, i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %63 = call i32 @_glfwInputError(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %49
  %66 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %61, %42
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @XCreateFontCursor(i32, i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
