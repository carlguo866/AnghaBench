; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_hostcheck.c_Curl_cert_hostcheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_hostcheck.c_Curl_cert_hostcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_HOST_MATCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_cert_hostcheck(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %12, %8, %2
  store i32 0, i32* %3, align 4
  br label %34

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @Curl_raw_equal(i8* %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %34

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @hostmatch(i8* %27, i8* %28)
  %30 = load i64, i64* @CURL_HOST_MATCH, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32, %25, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @Curl_raw_equal(i8*, i8*) #1

declare dso_local i64 @hostmatch(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
