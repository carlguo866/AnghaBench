; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_Atn.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_Atn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_Atn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_Atn(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @to_double(i32* %12, double* %11)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %24

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = load double, double* %11, align 8
  %22 = call i32 @atan(double %21)
  %23 = call i32 @return_double(i32* %20, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %17
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @to_double(i32*, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @return_double(i32*, i32) #1

declare dso_local i32 @atan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
