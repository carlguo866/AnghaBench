; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_recorder.c_recorder_close.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_recorder.c_recorder_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recorder = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to write trailer to %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Recording failed to %s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Recording complete to %s file: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @recorder_close(%struct.recorder* %0) #0 {
  %2 = alloca %struct.recorder*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.recorder* %0, %struct.recorder** %2, align 8
  %5 = load %struct.recorder*, %struct.recorder** %2, align 8
  %6 = getelementptr inbounds %struct.recorder, %struct.recorder* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = call i32 @av_write_trailer(%struct.TYPE_3__* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.recorder*, %struct.recorder** %2, align 8
  %13 = getelementptr inbounds %struct.recorder, %struct.recorder* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @LOGE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.recorder*, %struct.recorder** %2, align 8
  %17 = getelementptr inbounds %struct.recorder, %struct.recorder* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.recorder*, %struct.recorder** %2, align 8
  %20 = getelementptr inbounds %struct.recorder, %struct.recorder* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @avio_close(i32 %23)
  %25 = load %struct.recorder*, %struct.recorder** %2, align 8
  %26 = getelementptr inbounds %struct.recorder, %struct.recorder* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 @avformat_free_context(%struct.TYPE_3__* %27)
  %29 = load %struct.recorder*, %struct.recorder** %2, align 8
  %30 = getelementptr inbounds %struct.recorder, %struct.recorder* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load %struct.recorder*, %struct.recorder** %2, align 8
  %35 = getelementptr inbounds %struct.recorder, %struct.recorder* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LOGE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %48

38:                                               ; preds = %18
  %39 = load %struct.recorder*, %struct.recorder** %2, align 8
  %40 = getelementptr inbounds %struct.recorder, %struct.recorder* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @recorder_get_format_name(i32 %41)
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.recorder*, %struct.recorder** %2, align 8
  %45 = getelementptr inbounds %struct.recorder, %struct.recorder* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @LOGI(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %46)
  br label %48

48:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @av_write_trailer(%struct.TYPE_3__*) #1

declare dso_local i32 @LOGE(i8*, i32) #1

declare dso_local i32 @avio_close(i32) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_3__*) #1

declare dso_local i8* @recorder_get_format_name(i32) #1

declare dso_local i32 @LOGI(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
