; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFClampDoubleToInt8.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirwrite.c_TIFFClampDoubleToInt8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @TIFFClampDoubleToInt8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFClampDoubleToInt8(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp ogt double %4, 1.270000e+02
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 127, i32* %2, align 4
  br label %18

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = fcmp olt double %8, -1.280000e+02
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load double, double* %3, align 8
  %12 = load double, double* %3, align 8
  %13 = fcmp une double %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %7
  store i32 -128, i32* %2, align 4
  br label %18

15:                                               ; preds = %10
  %16 = load double, double* %3, align 8
  %17 = fptosi double %16 to i32
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %14, %6
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
