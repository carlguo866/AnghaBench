; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_g_Ctoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_glob.c_g_Ctoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_CUR_MAX = common dso_local global i64 0, align 8
@EOS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @g_Ctoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_Ctoc(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = call i32 @memset(i32* %8, i32 0, i32 4)
  br label %11

11:                                               ; preds = %37, %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @MB_CUR_MAX, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @CHAR(i32 %18)
  %20 = call i64 @wcrtomb(i8* %16, i64 %19, i32* %8)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @CHAR(i32 %25)
  %27 = trunc i64 %26 to i8
  %28 = load i8*, i8** %6, align 8
  store i8 %27, i8* %28, align 1
  store i64 1, i64* %9, align 8
  %29 = call i32 @memset(i32* %8, i32 0, i32 4)
  br label %30

30:                                               ; preds = %23, %15
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @CHAR(i32 %32)
  %34 = load i64, i64* @EOS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %47

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %42, i8** %6, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %7, align 8
  br label %11

46:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @wcrtomb(i8*, i64, i32*) #1

declare dso_local i64 @CHAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
