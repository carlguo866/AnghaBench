; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib589.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib589.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i64 0, align 8
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_MIMEPOST = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i64, i64* @CURLE_OK, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %8 = call i64 @curl_global_init(i32 %7)
  %9 = load i64, i64* @CURLE_OK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = call i32* (...) @curl_easy_init()
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 (...) @curl_global_cleanup()
  %23 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %15
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @CURLOPT_URL, align 4
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (i32*, i32, ...) @test_setopt(i32* %25, i32 %26, i8* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @CURLOPT_MIMEPOST, align 4
  %31 = call i32 (i32*, i32, ...) @test_setopt(i32* %29, i32 %30, i8* null)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %34 = call i32 (i32*, i32, ...) @test_setopt(i32* %32, i32 %33, i64 1)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @CURLOPT_HEADER, align 4
  %37 = call i32 (i32*, i32, ...) @test_setopt(i32* %35, i32 %36, i64 1)
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @curl_easy_perform(i32* %38)
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %24
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @curl_easy_cleanup(i32* %41)
  %43 = call i32 (...) @curl_global_cleanup()
  %44 = load i64, i64* %5, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %19, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
