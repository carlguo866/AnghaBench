; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_openuniquemode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_file.c_isc_file_openuniquemode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"w+\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_file_openuniquemode(i8* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load i32**, i32*** %6, align 8
  %16 = icmp ne i32** %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ false, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @REQUIRE(i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @mkstemp(i8* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @errno, align 4
  %31 = call i64 @isc__errno2result(i32 %30)
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @ISC_R_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @UNUSED(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i32* @fdopen(i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32, i32* @errno, align 4
  %45 = call i64 @isc__errno2result(i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @remove(i8* %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @close(i32 %48)
  br label %53

50:                                               ; preds = %36
  %51 = load i32*, i32** %8, align 8
  %52 = load i32**, i32*** %6, align 8
  store i32* %51, i32** %52, align 8
  br label %53

53:                                               ; preds = %50, %43
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i64, i64* %9, align 8
  ret i64 %55
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i64 @isc__errno2result(i32) #1

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
