; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_command.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawtext.c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"reinit\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@drawtext_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"Failed to process command. Continuing with existing parameters.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i8*, i8*, i32, i32)* @command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command(%struct.TYPE_13__* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %15, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %81, label %23

23:                                               ; preds = %6
  %24 = call %struct.TYPE_12__* @av_mallocz(i32 16)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %15, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %7, align 4
  br label %90

30:                                               ; preds = %23
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store i32* @drawtext_class, i32** %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %35 = call i32 @av_opt_copy(%struct.TYPE_12__* %33, %struct.TYPE_12__* %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %84

39:                                               ; preds = %30
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %42, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @av_set_options_string(%struct.TYPE_13__* %43, i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %51, align 8
  br label %84

52:                                               ; preds = %39
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = call i32 @init(%struct.TYPE_13__* %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = call i32 @uninit(%struct.TYPE_13__* %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %62, align 8
  br label %84

63:                                               ; preds = %52
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = call i32 @uninit(%struct.TYPE_13__* %69)
  %71 = call i32 @av_freep(%struct.TYPE_12__** %14)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @config_input(i32 %79)
  store i32 %80, i32* %7, align 4
  br label %90

81:                                               ; preds = %6
  %82 = load i32, i32* @ENOSYS, align 4
  %83 = call i32 @AVERROR(i32 %82)
  store i32 %83, i32* %7, align 4
  br label %90

84:                                               ; preds = %57, %48, %38
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 @av_log(%struct.TYPE_13__* %85, i32 %86, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %88 = call i32 @av_freep(%struct.TYPE_12__** %15)
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %84, %81, %63, %27
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_12__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_opt_copy(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @av_set_options_string(%struct.TYPE_13__*, i8*, i8*, i8*) #1

declare dso_local i32 @init(%struct.TYPE_13__*) #1

declare dso_local i32 @uninit(%struct.TYPE_13__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_12__**) #1

declare dso_local i32 @config_input(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
