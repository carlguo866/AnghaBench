; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_test_test.c_test_memory.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_test_test.c_test_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_memory.buf = internal global [4 x i8] c"xyz\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"xyz\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_memory() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @TEST_mem_eq(i8* null, i32 0, i8* null, i32 0)
  %3 = call i32 @TEST(i32 1, i32 %2)
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @TEST_mem_eq(i8* null, i32 1, i8* null, i32 2)
  %8 = call i32 @TEST(i32 1, i32 %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = or i32 %6, %11
  %13 = call i32 @TEST_mem_eq(i8* null, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %14 = call i32 @TEST(i32 0, i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = or i32 %12, %17
  %19 = call i32 @TEST_mem_eq(i8* null, i32 7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %20 = call i32 @TEST(i32 0, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = or i32 %18, %23
  %25 = call i32 @TEST_mem_ne(i8* null, i32 0, i8* null, i32 0)
  %26 = call i32 @TEST(i32 0, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = or i32 %24, %29
  %31 = call i32 @TEST_mem_eq(i8* null, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %32 = call i32 @TEST(i32 0, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = or i32 %30, %35
  %37 = call i32 @TEST_mem_eq(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* null, i32 0)
  %38 = call i32 @TEST(i32 0, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = or i32 %36, %41
  %43 = call i32 @TEST_mem_ne(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %44 = call i32 @TEST(i32 0, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = or i32 %42, %47
  %49 = call i32 @TEST_mem_eq(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3, i8* null, i32 0)
  %50 = call i32 @TEST(i32 0, i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = or i32 %48, %53
  %55 = call i32 @TEST_mem_eq(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_memory.buf, i64 0, i64 0), i32 4)
  %56 = call i32 @TEST(i32 0, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = or i32 %54, %59
  %61 = call i32 @TEST_mem_eq(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_memory.buf, i64 0, i64 0), i32 4)
  %62 = call i32 @TEST(i32 1, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = or i32 %60, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %0
  br label %70

69:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %71

70:                                               ; preds = %68
  store i32 0, i32* %1, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i32 @TEST(i32, i32) #1

declare dso_local i32 @TEST_mem_eq(i8*, i32, i8*, i32) #1

declare dso_local i32 @TEST_mem_ne(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
