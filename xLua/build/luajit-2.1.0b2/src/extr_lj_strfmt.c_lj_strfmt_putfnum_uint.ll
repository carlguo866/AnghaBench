; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_strfmt.c_lj_strfmt_putfnum_uint.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_strfmt.c_lj_strfmt_putfnum_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_strfmt_putfnum_uint(i32* %0, i32 %1, double %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %8 = load double, double* %6, align 8
  %9 = fcmp oge double %8, 0x43E0000000000000
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load double, double* %6, align 8
  %12 = fsub double %11, 0x43F0000000000000
  %13 = fptosi double %12 to i64
  store i64 %13, i64* %7, align 8
  br label %17

14:                                               ; preds = %3
  %15 = load double, double* %6, align 8
  %16 = fptosi double %15 to i64
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32* @lj_strfmt_putfxint(i32* %18, i32 %19, i32 %21)
  ret i32* %22
}

declare dso_local i32* @lj_strfmt_putfxint(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
