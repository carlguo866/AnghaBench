; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kiss_fft.c_kiss_fft_alloc.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kiss_fft.c_kiss_fft_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @kiss_fft_alloc(i32 %0, i32 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = add i64 4, %17
  store i64 %18, i64* %10, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @KISS_FFT_MALLOC(i64 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %9, align 8
  br label %39

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %9, align 8
  br label %36

36:                                               ; preds = %33, %28, %25
  %37 = load i64, i64* %10, align 8
  %38 = load i64*, i64** %8, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %21
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %85

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %76, %42
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  store double 0x400921FB54442D18, double* %12, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sitofp i32 %54 to double
  %56 = fmul double 0xC01921FB54442D18, %55
  %57 = load i32, i32* %5, align 4
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %56, %58
  store double %59, double* %13, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load double, double* %13, align 8
  %66 = fmul double %65, -1.000000e+00
  store double %66, double* %13, align 8
  br label %67

67:                                               ; preds = %64, %53
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = load double, double* %13, align 8
  %75 = call i32 @kf_cexp(i64 %73, double %74)
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %49

79:                                               ; preds = %49
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @kf_factor(i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %79, %39
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  ret %struct.TYPE_3__* %86
}

declare dso_local i64 @KISS_FFT_MALLOC(i64) #1

declare dso_local i32 @kf_cexp(i64, double) #1

declare dso_local i32 @kf_factor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
