; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1523.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1523.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_ERROR_SIZE = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@write_cb = common dso_local global i64 0, align 8
@CURLOPT_ERRORBUFFER = common dso_local global i32 0, align 4
@CURLOPT_NOPROGRESS = common dso_local global i32 0, align 4
@CURLOPT_XFERINFOFUNCTION = common dso_local global i32 0, align 4
@dload_progress_cb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"Start: %d\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"error %d: %s\0A\00", align 1
@CURLE_OPERATION_TIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"End: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = call i32* (...) @curl_easy_init()
  store i32* %7, i32** %4, align 8
  %8 = load i32, i32* @CURL_ERROR_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @CURLOPT_URL, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %12, i32 %13, i8* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %18 = load i64, i64* @write_cb, align 8
  %19 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %16, i32 %17, i64 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @CURLOPT_ERRORBUFFER, align 4
  %22 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %20, i32 %21, i8* %11)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @CURLOPT_NOPROGRESS, align 4
  %25 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %23, i32 %24, i64 0)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @CURLOPT_XFERINFOFUNCTION, align 4
  %28 = load i64, i64* @dload_progress_cb, align 8
  %29 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %26, i32 %27, i64 %28)
  %30 = call i32 @time(i32* null)
  %31 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @run(i32* %32, i32 1, i32 2)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* @stderr, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8* %11)
  br label %40

40:                                               ; preds = %36, %1
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @run(i32* %41, i32 12000, i32 1)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @CURLE_OPERATION_TIMEDOUT, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @stderr, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %11)
  br label %51

50:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %46
  %52 = call i32 @time(i32* null)
  %53 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @curl_easy_cleanup(i32* %54)
  %56 = load i32, i32* %3, align 4
  %57 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %57)
  ret i32 %56
}

declare dso_local i32* @curl_easy_init(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @run(i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
