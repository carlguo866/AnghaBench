; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_provider_internal_test.c_test_builtin_provider.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_provider_internal_test.c_test_builtin_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"p_test_builtin\00", align 1
@PROVIDER_INIT_FUNCTION_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_builtin_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_builtin_provider() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i32* null, i32** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = load i32, i32* @PROVIDER_INIT_FUNCTION_NAME, align 4
  %5 = call i32* @ossl_provider_new(i32* null, i8* %3, i32 %4, i32 0)
  store i32* %5, i32** %2, align 8
  %6 = call i64 @TEST_ptr(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i32*, i32** %2, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @expected_greeting1(i8* %10)
  %12 = call i64 @test_provider(i32* %9, i32 %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %8, %0
  %15 = phi i1 [ false, %0 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @ossl_provider_new(i32*, i8*, i32, i32) #1

declare dso_local i64 @test_provider(i32*, i32) #1

declare dso_local i32 @expected_greeting1(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
