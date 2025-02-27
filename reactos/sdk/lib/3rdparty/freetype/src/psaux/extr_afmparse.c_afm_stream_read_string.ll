; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/psaux/extr_afmparse.c_afm_stream_read_string.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/psaux/extr_afmparse.c_afm_stream_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@AFM_STREAM_STATUS_EOL = common dso_local global i32 0, align 4
@AFM_STREAM_STATUS_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*)* @afm_stream_read_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @afm_stream_read_string(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = call i32 @afm_stream_skip_spaces(%struct.TYPE_6__* %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i64 @AFM_STATUS_EOL(%struct.TYPE_6__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = call i8* @AFM_STREAM_KEY_BEGIN(%struct.TYPE_6__* %13)
  store i8* %14, i8** %4, align 8
  br label %15

15:                                               ; preds = %12, %33
  %16 = call i32 (...) @AFM_GETC()
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @AFM_IS_NEWLINE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @AFM_STREAM_STATUS_EOL, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @AFM_IS_EOF(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @AFM_STREAM_STATUS_EOF, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %34

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32
  br label %15

34:                                               ; preds = %28, %20
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** %2, align 8
  br label %36

36:                                               ; preds = %34, %11
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

declare dso_local i32 @afm_stream_skip_spaces(%struct.TYPE_6__*) #1

declare dso_local i64 @AFM_STATUS_EOL(%struct.TYPE_6__*) #1

declare dso_local i8* @AFM_STREAM_KEY_BEGIN(%struct.TYPE_6__*) #1

declare dso_local i32 @AFM_GETC(...) #1

declare dso_local i64 @AFM_IS_NEWLINE(i32) #1

declare dso_local i64 @AFM_IS_EOF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
