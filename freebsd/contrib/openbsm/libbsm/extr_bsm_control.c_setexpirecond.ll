; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_setexpirecond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_control.c_setexpirecond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32, i8)* @setexpirecond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setexpirecond(i32* %0, i64* %1, i32 %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  %10 = load i8, i8* %9, align 1
  %11 = call i64 @isupper(i8 signext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i8, i8* %9, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 32, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13, %4
  %18 = load i64*, i64** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i8, i8* %9, align 1
  %21 = call i32 @au_spacetobytes(i64* %18, i32 %19, i8 signext %20)
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i8, i8* %9, align 1
  %26 = call i32 @au_timetosec(i32* %23, i32 %24, i8 signext %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i64 @isupper(i8 signext) #1

declare dso_local i32 @au_spacetobytes(i64*, i32, i8 signext) #1

declare dso_local i32 @au_timetosec(i32*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
