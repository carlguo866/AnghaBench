; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_scriplib.c_AddScriptToStack.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_scriplib.c_AddScriptToStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i32 }

@script = common dso_local global %struct.TYPE_3__* null, align 8
@scriptstack = common dso_local global %struct.TYPE_3__* null, align 8
@MAX_INCLUDES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"script file exceeded MAX_INCLUDES\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Script file %s was not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"entering %s (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"entering %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddScriptToStack(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 1
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** @script, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scriptstack, align 8
  %11 = load i64, i64* @MAX_INCLUDES, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = icmp eq %struct.TYPE_3__* %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @Error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @ExpandPath(i8* %20)
  %22 = call i32 @strcpy(i32 %19, i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @vfsLoadFile(i32 %25, i8** %6, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %37

30:                                               ; preds = %16
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, i32, ...) @Sys_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 -1
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** @script, align 8
  br label %71

37:                                               ; preds = %16
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 (i8*, i32, ...) @Sys_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %45)
  br label %52

47:                                               ; preds = %37
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, i32, ...) @Sys_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr i8, i8* %65, i64 %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %52, %30
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @ExpandPath(i8*) #1

declare dso_local i32 @vfsLoadFile(i32, i8**, i32) #1

declare dso_local i32 @Sys_Printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
