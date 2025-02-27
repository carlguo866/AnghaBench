; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_ec_inner_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_ec_inner_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8*, i8*, i64, i32)* }
%struct.TYPE_6__ = type { i64, i32, i32 }

@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [19 x i8] c"%-30s %8.2f mul/s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*, %struct.TYPE_6__*)* @test_speed_ec_inner_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_speed_ec_inner_2(i8* %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca [80 x i8], align 16
  %8 = alloca [160 x i8], align 16
  %9 = alloca [22 x i32], align 16
  %10 = alloca [22 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = getelementptr inbounds [22 x i32], [22 x i32]* %10, i64 0, i64 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @br_i31_decode(i32* %21, i32 %24, i64 %25)
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %28 = call i32 @memset(i8* %27, i8 signext 84, i32 80)
  %29 = getelementptr inbounds [22 x i32], [22 x i32]* %9, i64 0, i64 0
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %31 = getelementptr inbounds [22 x i32], [22 x i32]* %10, i64 0, i64 0
  %32 = call i32 @br_i31_decode_reduce(i32* %29, i8* %30, i32 80, i32* %31)
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds [22 x i32], [22 x i32]* %9, i64 0, i64 0
  %36 = call i32 @br_i31_encode(i8* %33, i64 %34, i32* %35)
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %51, %3
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i32)** %42, align 8
  %44 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %43(i8* %44, i8* %45, i64 %46, i32 %49)
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %37

54:                                               ; preds = %37
  store i64 10, i64* %13, align 8
  br label %55

55:                                               ; preds = %94, %54
  %56 = call i64 (...) @clock()
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %13, align 8
  store i64 %57, i64* %17, align 8
  br label %58

58:                                               ; preds = %72, %55
  %59 = load i64, i64* %17, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (i8*, i8*, i64, i32)*, i32 (i8*, i8*, i64, i32)** %63, align 8
  %65 = getelementptr inbounds [160 x i8], [160 x i8]* %8, i64 0, i64 0
  %66 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %64(i8* %65, i8* %66, i64 %67, i32 %70)
  br label %72

72:                                               ; preds = %61
  %73 = load i64, i64* %17, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %17, align 8
  br label %58

75:                                               ; preds = %58
  %76 = call i64 (...) @clock()
  store i64 %76, i64* %15, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %14, align 8
  %79 = sub nsw i64 %77, %78
  %80 = sitofp i64 %79 to double
  %81 = load double, double* @CLOCKS_PER_SEC, align 8
  %82 = fdiv double %80, %81
  store double %82, double* %16, align 8
  %83 = load double, double* %16, align 8
  %84 = fcmp oge double %83, 2.000000e+00
  br i1 %84, label %85, label %94

85:                                               ; preds = %75
  %86 = load i8*, i8** %4, align 8
  %87 = load i64, i64* %13, align 8
  %88 = sitofp i64 %87 to double
  %89 = load double, double* %16, align 8
  %90 = fdiv double %88, %89
  %91 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %86, double %90)
  %92 = load i32, i32* @stdout, align 4
  %93 = call i32 @fflush(i32 %92)
  br label %97

94:                                               ; preds = %75
  %95 = load i64, i64* %13, align 8
  %96 = shl i64 %95, 1
  store i64 %96, i64* %13, align 8
  br label %55

97:                                               ; preds = %85
  ret void
}

declare dso_local i32 @br_i31_decode(i32*, i32, i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @br_i31_decode_reduce(i32*, i8*, i32, i32*) #1

declare dso_local i32 @br_i31_encode(i8*, i64, i32*) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @printf(i8*, i8*, double) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
