; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_utstring_append_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_utstring_append_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.1lf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.*lg\00", align 1
@DBL_DIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, i8*)* @ucl_utstring_append_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_utstring_append_double(double %0, i8* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  store double %0, double* %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  store double 0x3E7AD7F29ABCAF48, double* %6, align 8
  %9 = load double, double* %3, align 8
  %10 = load double, double* %3, align 8
  %11 = fptosi double %10 to i32
  %12 = sitofp i32 %11 to double
  %13 = fcmp oeq double %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load double, double* %3, align 8
  %17 = call i32 (i32*, i8*, double, ...) @utstring_printf(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %16)
  br label %37

18:                                               ; preds = %2
  %19 = load double, double* %3, align 8
  %20 = load double, double* %3, align 8
  %21 = fptosi double %20 to i32
  %22 = sitofp i32 %21 to double
  %23 = fsub double %19, %22
  %24 = call double @fabs(double %23)
  %25 = fcmp olt double %24, 0x3E7AD7F29ABCAF48
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @DBL_DIG, align 4
  %29 = sitofp i32 %28 to double
  %30 = load double, double* %3, align 8
  %31 = call i32 (i32*, i8*, double, ...) @utstring_printf(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), double %29, double %30)
  br label %36

32:                                               ; preds = %18
  %33 = load i32*, i32** %5, align 8
  %34 = load double, double* %3, align 8
  %35 = call i32 (i32*, i8*, double, ...) @utstring_printf(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %34)
  br label %36

36:                                               ; preds = %32, %26
  br label %37

37:                                               ; preds = %36, %14
  ret i32 0
}

declare dso_local i32 @utstring_printf(i32*, i8*, double, ...) #1

declare dso_local double @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
