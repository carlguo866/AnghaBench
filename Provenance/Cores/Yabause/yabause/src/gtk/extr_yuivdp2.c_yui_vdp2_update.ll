; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuivdp2.c_yui_vdp2_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuivdp2.c_yui_vdp2_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@VDP2_DEBUG_STRING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yui_vdp2_update(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %9 = load i32, i32* @VDP2_DEBUG_STRING_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @YUI_VIEWER(i32 %15)
  %17 = call i32 @yui_viewer_clear(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %33 [
    i32 0, label %21
    i32 1, label %23
    i32 2, label %25
    i32 3, label %27
    i32 4, label %29
    i32 5, label %31
  ]

21:                                               ; preds = %1
  %22 = call i32 @Vdp2DebugStatsGeneral(i8* %12, i64* %5)
  br label %33

23:                                               ; preds = %1
  %24 = call i32 @Vdp2DebugStatsNBG0(i8* %12, i64* %5)
  br label %33

25:                                               ; preds = %1
  %26 = call i32 @Vdp2DebugStatsNBG1(i8* %12, i64* %5)
  br label %33

27:                                               ; preds = %1
  %28 = call i32 @Vdp2DebugStatsNBG2(i8* %12, i64* %5)
  br label %33

29:                                               ; preds = %1
  %30 = call i32 @Vdp2DebugStatsNBG3(i8* %12, i64* %5)
  br label %33

31:                                               ; preds = %1
  %32 = call i32 @Vdp2DebugStatsRBG0(i8* %12, i64* %5)
  br label %33

33:                                               ; preds = %1, %31, %29, %27, %25, %23, %21
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32* @Vdp2DebugTexture(i32 %42, i32* %7, i32* %8)
  store i32* %43, i32** %6, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @yui_vdp2_draw(%struct.TYPE_4__* %44, i32* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %33
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gtk_text_buffer_set_text(i32 %55, i8* %12, i32 -1)
  br label %62

57:                                               ; preds = %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @gtk_text_buffer_set_text(i32 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @yui_viewer_clear(i32) #2

declare dso_local i32 @YUI_VIEWER(i32) #2

declare dso_local i32 @Vdp2DebugStatsGeneral(i8*, i64*) #2

declare dso_local i32 @Vdp2DebugStatsNBG0(i8*, i64*) #2

declare dso_local i32 @Vdp2DebugStatsNBG1(i8*, i64*) #2

declare dso_local i32 @Vdp2DebugStatsNBG2(i8*, i64*) #2

declare dso_local i32 @Vdp2DebugStatsNBG3(i8*, i64*) #2

declare dso_local i32 @Vdp2DebugStatsRBG0(i8*, i64*) #2

declare dso_local i32* @Vdp2DebugTexture(i32, i32*, i32*) #2

declare dso_local i32 @yui_vdp2_draw(%struct.TYPE_4__*, i32*, i32, i32) #2

declare dso_local i32 @gtk_text_buffer_set_text(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
