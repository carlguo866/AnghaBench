; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_bwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_testbuckets.c_test_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = common dso_local global i32 0, align 4
@COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"brigade_write\00", align 1
@THESTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"determine brigade length\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"brigade has correct length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_bwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bwrite(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @p, align 4
  %10 = call i32* @apr_bucket_alloc_create(i32 %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @p, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @apr_brigade_create(i32 %11, i32* %12)
  store i32* %13, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %24, %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @COUNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @THESTR, align 4
  %22 = call i32 @apr_brigade_write(i32* %20, i32* null, i32* null, i32 %21, i32 4)
  %23 = call i32 @apr_assert_success(i32* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %14

27:                                               ; preds = %14
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @apr_brigade_length(i32* %29, i32 1, i32* %7)
  %31 = call i32 @apr_assert_success(i32* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* @COUNT, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ABTS_ASSERT(i32* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @apr_brigade_destroy(i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @apr_bucket_alloc_destroy(i32* %43)
  ret void
}

declare dso_local i32* @apr_bucket_alloc_create(i32) #1

declare dso_local i32* @apr_brigade_create(i32, i32*) #1

declare dso_local i32 @apr_assert_success(i32*, i8*, i32) #1

declare dso_local i32 @apr_brigade_write(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @apr_brigade_length(i32*, i32, i32*) #1

declare dso_local i32 @ABTS_ASSERT(i32*, i8*, i32) #1

declare dso_local i32 @apr_brigade_destroy(i32*) #1

declare dso_local i32 @apr_bucket_alloc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
