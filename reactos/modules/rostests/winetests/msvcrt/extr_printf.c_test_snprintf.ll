; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_printf.c_test_snprintf.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_printf.c_test_snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snprintf_test = type { i8*, i32 }
%struct.snprintf_test.0 = type opaque

@.str = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"justfit\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"justfits\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"muchlonger\00", align 1
@__const.test_snprintf.tests = private unnamed_addr constant [4 x %struct.snprintf_test] [%struct.snprintf_test { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 5 }, %struct.snprintf_test { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 7 }, %struct.snprintf_test { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 8 }, %struct.snprintf_test { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 -1 }], align 16
@.str.4 = private unnamed_addr constant [32 x i8] c"\22%s\22: expected %d, returned %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"\22%s\22: rendered \22%.*s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_snprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_snprintf() #0 {
  %1 = alloca [4 x %struct.snprintf_test], align 16
  %2 = alloca [8 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast [4 x %struct.snprintf_test]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([4 x %struct.snprintf_test]* @__const.test_snprintf.tests to i8*), i64 64, i1 false)
  store i32 8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %64, %0
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds [4 x %struct.snprintf_test], [4 x %struct.snprintf_test]* %1, i64 0, i64 0
  %13 = bitcast %struct.snprintf_test* %12 to %struct.snprintf_test.0*
  %14 = call i32 @ARRAY_SIZE(%struct.snprintf_test.0* %13)
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [4 x %struct.snprintf_test], [4 x %struct.snprintf_test]* %1, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.snprintf_test, %struct.snprintf_test* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 16
  store i8* %21, i8** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [4 x %struct.snprintf_test], [4 x %struct.snprintf_test]* %1, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.snprintf_test, %struct.snprintf_test* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @_snprintf(i8* %27, i32 8, i8* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %43

33:                                               ; preds = %16
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  br label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i32 [ %37, %36 ], [ %40, %38 ]
  br label %43

43:                                               ; preds = %41, %32
  %44 = phi i32 [ 8, %32 ], [ %42, %41 ]
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i32, i8*, i8*, i32, ...) @ok(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %49, i32 %50, i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @memcmp(i8* %53, i8* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0
  %63 = call i32 (i32, i8*, i8*, i32, ...) @ok(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %60, i32 %61, i8* %62)
  br label %64

64:                                               ; preds = %43
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %10

67:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.snprintf_test.0*) #2

declare dso_local i32 @_snprintf(i8*, i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, i8*, i32, ...) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
