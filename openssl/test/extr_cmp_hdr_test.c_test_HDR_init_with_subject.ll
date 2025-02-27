; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_hdr_test.c_test_HDR_init_with_subject.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_hdr_test.c_test_HDR_init_with_subject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@CMP_HDR_TEST_FIXTURE = common dso_local global i32 0, align 4
@set_up = common dso_local global i32 0, align 4
@fixture = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Common Name\00", align 1
@execute_HDR_init_test = common dso_local global i32 0, align 4
@result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_HDR_init_with_subject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_HDR_init_with_subject() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @CMP_HDR_TEST_FIXTURE, align 4
  %3 = load i32, i32* @set_up, align 4
  %4 = call i32 @SETUP_TEST_FIXTURE(i32 %2, i32 %3)
  store i32* null, i32** %1, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fixture, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = call i32* (...) @X509_NAME_new()
  store i32* %7, i32** %1, align 8
  %8 = call i32 @TEST_ptr(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %0
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @X509_NAME_ADD(i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @TEST_true(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fixture, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @OSSL_CMP_CTX_set1_subjectName(i32 %18, i32* %19)
  %21 = call i32 @TEST_true(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15, %10, %0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fixture, align 8
  %25 = call i32 @tear_down(%struct.TYPE_4__* %24)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @fixture, align 8
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @X509_NAME_free(i32* %27)
  %29 = load i32, i32* @execute_HDR_init_test, align 4
  %30 = call i32 @EXECUTE_TEST(i32 %29, i32 (%struct.TYPE_4__*)* @tear_down)
  %31 = load i32, i32* @result, align 4
  ret i32 %31
}

declare dso_local i32 @SETUP_TEST_FIXTURE(i32, i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @X509_NAME_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @X509_NAME_ADD(i32*, i8*, i8*) #1

declare dso_local i32 @OSSL_CMP_CTX_set1_subjectName(i32, i32*) #1

declare dso_local i32 @tear_down(%struct.TYPE_4__*) #1

declare dso_local i32 @X509_NAME_free(i32*) #1

declare dso_local i32 @EXECUTE_TEST(i32, i32 (%struct.TYPE_4__*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
