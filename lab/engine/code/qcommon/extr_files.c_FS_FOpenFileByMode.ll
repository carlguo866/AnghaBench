; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_FOpenFileByMode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_FS_FOpenFileByMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"FS_FOpenFileByMode: bad mode\00", align 1
@fsh = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FS_FOpenFileByMode(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @qfalse, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %37 [
    i32 129, label %12
    i32 128, label %17
    i32 130, label %26
    i32 131, label %28
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @qtrue, align 4
  %16 = call i32 @FS_FOpenFileRead(i8* %13, i32* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  br label %40

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @FS_FOpenFileWrite(i8* %18)
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %8, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 -1, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %17
  br label %40

26:                                               ; preds = %3
  %27 = load i32, i32* @qtrue, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %3, %26
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @FS_FOpenFileAppend(i8* %29)
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %8, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 -1, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %28
  br label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @ERR_FATAL, align 4
  %39 = call i32 @Com_Error(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %66

40:                                               ; preds = %36, %25, %12
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %66

45:                                               ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsh, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %45
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fsh, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %58, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %57, %43, %37
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @FS_FOpenFileRead(i8*, i32*, i32) #1

declare dso_local i32 @FS_FOpenFileWrite(i8*) #1

declare dso_local i32 @FS_FOpenFileAppend(i8*) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
