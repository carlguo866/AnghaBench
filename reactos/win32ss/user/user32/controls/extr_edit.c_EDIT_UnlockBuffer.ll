; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_UnlockBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_UnlockBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"edit hwnd %p already destroyed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"lock_count == 0 ... please report\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"es->text == 0 ... please report\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Synchronizing with 32-bit ANSI buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%d WCHARs translated to %d bytes\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Resizing 32-bit ANSI buffer from %d to %d bytes\0A\00", align 1
@LMEM_MOVEABLE = common dso_local global i32 0, align 4
@LMEM_ZEROINIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Real new size %d bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"FAILED! Will synchronize partially\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"no buffer ... please report\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64)* @EDIT_UnlockBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_UnlockBuffer(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %137

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @IsWindow(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %137

26:                                               ; preds = %15
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %137

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %137

40:                                               ; preds = %33
  %41 = load i64, i64* %4, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %132

48:                                               ; preds = %43, %40
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %129

53:                                               ; preds = %48
  store i64 0, i64* %5, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = call i64 @get_text_length(%struct.TYPE_4__* %54)
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %6, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %122

61:                                               ; preds = %53
  %62 = load i32, i32* @CP_ACP, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @WideCharToMultiByte(i32 %62, i32 0, i32* %65, i64 %66, i32* null, i64 0, i32* null, i32* null)
  store i64 %67, i64* %7, align 8
  %68 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %69, i64 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @LocalSize(i64 %74)
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %5, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %61
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @ROUND_TO_GROW(i64 %80)
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i64 %82, i64 %83)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i32, i32* @LMEM_MOVEABLE, align 4
  %90 = load i32, i32* @LMEM_ZEROINIT, align 4
  %91 = or i32 %89, %90
  %92 = call i64 @LocalReAlloc(i64 %87, i64 %88, i32 %91)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %79
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i64 @LocalSize(i64 %99)
  store i64 %100, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 %101)
  br label %105

103:                                              ; preds = %79
  %104 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %95
  br label %106

106:                                              ; preds = %105, %61
  %107 = load i32, i32* @CP_ACP, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i32* @LocalLock(i64 %114)
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @WideCharToMultiByte(i32 %107, i32 0, i32* %110, i64 %111, i32* %115, i64 %116, i32* null, i32* null)
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @LocalUnlock(i64 %120)
  br label %122

122:                                              ; preds = %106, %53
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @LocalUnlock(i64 %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i32* null, i32** %128, align 8
  br label %131

129:                                              ; preds = %48
  %130 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %137

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %43
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %132, %129, %38, %31, %21, %14
  ret void
}

declare dso_local i32 @IsWindow(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @get_text_length(%struct.TYPE_4__*) #1

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32*, i64, i32*, i64, i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @LocalSize(i64) #1

declare dso_local i64 @ROUND_TO_GROW(i64) #1

declare dso_local i64 @LocalReAlloc(i64, i64, i32) #1

declare dso_local i32* @LocalLock(i64) #1

declare dso_local i32 @LocalUnlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
