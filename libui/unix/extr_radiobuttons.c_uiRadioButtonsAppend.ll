; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_radiobuttons.c_uiRadioButtonsAppend.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_radiobuttons.c_uiRadioButtonsAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@onToggled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiRadioButtonsAppend(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call i32 @g_ptr_array_index(%struct.TYPE_7__* %16, i32 0)
  %18 = call i32* @GTK_RADIO_BUTTON(i32 %17)
  store i32* %18, i32** %6, align 8
  br label %19

19:                                               ; preds = %13, %2
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32* @gtk_radio_button_new_with_label_from_widget(i32* %20, i8* %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @onToggled, align 4
  %25 = call i32 @G_CALLBACK(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = call i32 @g_signal_connect(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %25, %struct.TYPE_6__* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @gtk_container_add(i32 %30, i32* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @g_ptr_array_add(%struct.TYPE_7__* %35, i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @gtk_widget_show(i32* %38)
  ret void
}

declare dso_local i32* @GTK_RADIO_BUTTON(i32) #1

declare dso_local i32 @g_ptr_array_index(%struct.TYPE_7__*, i32) #1

declare dso_local i32* @gtk_radio_button_new_with_label_from_widget(i32*, i8*) #1

declare dso_local i32 @g_signal_connect(i32*, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32 @gtk_container_add(i32, i32*) #1

declare dso_local i32 @g_ptr_array_add(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @gtk_widget_show(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
