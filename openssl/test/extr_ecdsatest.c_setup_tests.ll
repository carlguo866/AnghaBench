; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ecdsatest.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ecdsatest.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crv_len = common dso_local global i32 0, align 4
@curves = common dso_local global i32* null, align 8
@test_builtin = common dso_local global i32 0, align 4
@x9_62_tests = common dso_local global i32 0, align 4
@ecdsa_cavs_kats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @EC_get_builtin_curves(i32* null, i32 0)
  store i32 %2, i32* @crv_len, align 4
  %3 = load i32, i32* @crv_len, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 4, %4
  %6 = trunc i64 %5 to i32
  %7 = call i32* @OPENSSL_malloc(i32 %6)
  store i32* %7, i32** @curves, align 8
  %8 = call i32 @TEST_ptr(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i32*, i32** @curves, align 8
  %12 = load i32, i32* @crv_len, align 4
  %13 = call i32 @EC_get_builtin_curves(i32* %11, i32 %12)
  %14 = call i32 @TEST_true(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %0
  store i32 0, i32* %1, align 4
  br label %25

17:                                               ; preds = %10
  %18 = load i32, i32* @test_builtin, align 4
  %19 = load i32, i32* @crv_len, align 4
  %20 = call i32 @ADD_ALL_TESTS(i32 %18, i32 %19)
  %21 = load i32, i32* @x9_62_tests, align 4
  %22 = load i32, i32* @ecdsa_cavs_kats, align 4
  %23 = call i32 @OSSL_NELEM(i32 %22)
  %24 = call i32 @ADD_ALL_TESTS(i32 %21, i32 %23)
  store i32 1, i32* %1, align 4
  br label %25

25:                                               ; preds = %17, %16
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @EC_get_builtin_curves(i32*, i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @ADD_ALL_TESTS(i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
