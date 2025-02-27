; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bftest.c_test_bf_ecb_raw.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bftest.c_test_bf_ecb_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bf_key = common dso_local global i64* null, align 8
@bf_plain = common dso_local global i32** null, align 8
@bf_cipher = common dso_local global i32** null, align 8
@BF_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_bf_ecb_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bf_ecb_raw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %6 = load i64*, i64** @bf_key, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, i64* %6, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @strlen(i64 %10)
  %12 = load i64*, i64** @bf_key, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @BF_set_key(i32* %4, i32 %11, i8* %17)
  %19 = load i32**, i32*** @bf_plain, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = load i32**, i32*** @bf_plain, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %36 = call i32 @BF_encrypt(i32* %35, i32* %4)
  %37 = load i32**, i32*** @bf_cipher, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* @BF_BLOCK, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %45 = load i32, i32* @BF_BLOCK, align 4
  %46 = call i32 @TEST_mem_eq(i32* %42, i32 %43, i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %1
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %51 = call i32 @BF_decrypt(i32* %50, i32* %4)
  %52 = load i32**, i32*** @bf_plain, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* @BF_BLOCK, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %60 = load i32, i32* @BF_BLOCK, align 4
  %61 = call i32 @TEST_mem_eq(i32* %57, i32 %58, i32* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @BF_set_key(i32*, i32, i8*) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @BF_encrypt(i32*, i32*) #1

declare dso_local i32 @TEST_mem_eq(i32*, i32, i32*, i32) #1

declare dso_local i32 @BF_decrypt(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
