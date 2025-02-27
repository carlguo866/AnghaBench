; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_getpart.c_decodedata.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_getpart.c_decodedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i64 0, align 8
@GPE_OK = common dso_local global i32 0, align 4
@GPE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*)* @decodedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decodedata(i8** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i64, i64* @CURLE_OK, align 8
  store i64 %9, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @GPE_OK, align 4
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @Curl_base64_decode(i8* %17, i8** %7, i64* %8)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @GPE_OUT_OF_MEMORY, align 4
  store i32 %22, i32* %3, align 4
  br label %45

23:                                               ; preds = %15
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @free(i8* %27)
  %29 = load i32, i32* @GPE_OUT_OF_MEMORY, align 4
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %23
  %31 = load i8**, i8*** %4, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @memcpy(i8* %32, i8* %33, i64 %34)
  %36 = load i64, i64* %8, align 8
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i8**, i8*** %4, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32, i32* @GPE_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %30, %26, %21, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @Curl_base64_decode(i8*, i8**, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
