; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_events.c_vlc_xcb_error_Check.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/xcb/extr_events.c_vlc_xcb_error_Check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s: X11 error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_xcb_error_Check(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.TYPE_4__* @xcb_request_check(i32* %12, i32 %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = call i32 @free(%struct.TYPE_4__* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @msg_Err(i32* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %33

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_4__* @xcb_request_check(i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
