; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_has_dir.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-file.c_has_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@common_dirs = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%C %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i8*)* @has_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_dir(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @common_dirs, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %12, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @common_dirs, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 126
  br i1 %34, label %35, label %75

35:                                               ; preds = %5
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %89

39:                                               ; preds = %35
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* @PATH_MAX, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = call i32 (i8*, i32, i8*, ...) @fz_snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %50)
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* @PATH_MAX, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = call i32 (i8*, i32, i8*, ...) @fz_snprintf(i8* %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %54, i8* %56)
  br label %74

58:                                               ; preds = %39
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @PATH_MAX, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 (i8*, i32, i8*, ...) @fz_snprintf(i8* %59, i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* @PATH_MAX, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i8*, i8** %8, align 8
  br label %71

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i8* [ %69, %68 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %70 ]
  %73 = call i32 (i8*, i32, i8*, ...) @fz_snprintf(i8* %63, i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %65, i8* %72)
  br label %74

74:                                               ; preds = %71, %45
  br label %85

75:                                               ; preds = %5
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* @PATH_MAX, align 4
  %79 = call i32 @fz_strlcpy(i8* %76, i8* %77, i32 %78)
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* @PATH_MAX, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 (i8*, i32, i8*, ...) @fz_snprintf(i8* %80, i32 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %82, i8* %83)
  br label %85

85:                                               ; preds = %75, %74
  %86 = load i32, i32* @ctx, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @fz_is_directory(i32 %86, i8* %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %38
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @fz_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_is_directory(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
