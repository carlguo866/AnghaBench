; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_password_dialog.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_password_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@ui = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@T = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@NW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Password:\00", align 1
@input_password = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@B = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@NONE = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Cancel\00", align 1
@KEY_ESCAPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"Okay\00", align 1
@UI_INPUT_ACCEPT = common dso_local global i32 0, align 4
@password = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @password_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @password_dialog() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui, i32 0, i32 0), align 8
  %3 = add nsw i32 %2, 4
  %4 = mul nsw i32 %3, 3
  %5 = call i32 @ui_dialog_begin(i32 400, i32 %4)
  %6 = load i32, i32* @T, align 4
  %7 = load i32, i32* @X, align 4
  %8 = load i32, i32* @NW, align 4
  %9 = call i32 @ui_layout(i32 %6, i32 %7, i32 %8, i32 2, i32 2)
  %10 = call i32 @ui_label(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @ui_input(%struct.TYPE_4__* @input_password, i32 200, i32 1)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @B, align 4
  %13 = load i32, i32* @X, align 4
  %14 = load i32, i32* @NW, align 4
  %15 = call i32 @ui_layout(i32 %12, i32 %13, i32 %14, i32 2, i32 2)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui, i32 0, i32 0), align 8
  %17 = call i32 @ui_panel_begin(i32 0, i32 %16, i32 0, i32 0, i32 0)
  %18 = load i32, i32* @R, align 4
  %19 = load i32, i32* @NONE, align 4
  %20 = load i32, i32* @S, align 4
  %21 = call i32 @ui_layout(i32 %18, i32 %19, i32 %20, i32 0, i32 0)
  %22 = call i64 @ui_button(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %0
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui, i32 0, i32 3), align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui, i32 0, i32 1), align 8
  %29 = load i64, i64* @KEY_ESCAPE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %0
  %32 = call i32 (...) @glutLeaveMainLoop()
  br label %33

33:                                               ; preds = %31, %27, %24
  %34 = call i32 (...) @ui_spacer()
  %35 = call i64 @ui_button(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @UI_INPUT_ACCEPT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %33
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @input_password, i32 0, i32 0), align 4
  store i32 %42, i32* @password, align 4
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ui, i32 0, i32 2), align 8
  %43 = call i32 (...) @reload()
  %44 = call i32 (...) @shrinkwrap()
  br label %45

45:                                               ; preds = %41, %37
  %46 = call i32 (...) @ui_panel_end()
  %47 = call i32 (...) @ui_dialog_end()
  ret void
}

declare dso_local i32 @ui_dialog_begin(i32, i32) #1

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_label(i8*) #1

declare dso_local i32 @ui_input(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ui_panel_begin(i32, i32, i32, i32, i32) #1

declare dso_local i64 @ui_button(i8*) #1

declare dso_local i32 @glutLeaveMainLoop(...) #1

declare dso_local i32 @ui_spacer(...) #1

declare dso_local i32 @reload(...) #1

declare dso_local i32 @shrinkwrap(...) #1

declare dso_local i32 @ui_panel_end(...) #1

declare dso_local i32 @ui_dialog_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
