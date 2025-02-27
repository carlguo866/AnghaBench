; ModuleID = '/home/carl/AnghaBench/RetroArch/ui/drivers/extr_ui_win32.c_win32_browser.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ui/drivers/extr_ui_win32.c_win32_browser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i8*, i8*, i8*)* @win32_browser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @win32_browser(i32 %0, i8* %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [32768 x i8], align 16
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = call %struct.TYPE_5__* (...) @ui_companion_driver_get_browser_window_ptr()
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %14, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %79

22:                                               ; preds = %6
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 16
  %28 = getelementptr inbounds [32768 x i8], [32768 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %28, align 16
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @string_is_empty(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @strlcpy(i8* %26, i8* %33, i64 %24)
  br label %35

35:                                               ; preds = %32, %22
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr inbounds [32768 x i8], [32768 x i8]* %18, i64 0, i64 0
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @strlcpy(i8* %44, i8* %45, i64 32768)
  br label %47

47:                                               ; preds = %43, %38, %35
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i8* %26, i8** %50, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @strdup(i8* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds [32768 x i8], [32768 x i8]* %18, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %59, align 8
  %61 = call i32 %60(%struct.TYPE_6__* %15)
  store i32 %61, i32* %13, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %47
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @strlcpy(i8* %69, i8* %71, i64 %72)
  br label %74

74:                                               ; preds = %68, %64, %47
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @free(i32 %76)
  %78 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %78)
  br label %79

79:                                               ; preds = %74, %6
  %80 = load i32, i32* %13, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_5__* @ui_companion_driver_get_browser_window_ptr(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @free(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
