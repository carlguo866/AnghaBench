; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgAddStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgAddStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CfgAddStr(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %3
  store i32* null, i32** %4, align 8
  br label %40

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @CalcStrToUni(i8* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32* null, i32** %4, align 8
  br label %40

26:                                               ; preds = %20
  %27 = load i64, i64* %9, align 8
  %28 = call i32* @Malloc(i64 %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @StrToUni(i32* %29, i64 %30, i8* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @CfgAddUniStr(i32* %33, i8* %34, i32* %35)
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @Free(i32* %37)
  %39 = load i32*, i32** %10, align 8
  store i32* %39, i32** %4, align 8
  br label %40

40:                                               ; preds = %26, %25, %19
  %41 = load i32*, i32** %4, align 8
  ret i32* %41
}

declare dso_local i64 @CalcStrToUni(i8*) #1

declare dso_local i32* @Malloc(i64) #1

declare dso_local i32 @StrToUni(i32*, i64, i8*) #1

declare dso_local i32* @CfgAddUniStr(i32*, i8*, i32*) #1

declare dso_local i32 @Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
