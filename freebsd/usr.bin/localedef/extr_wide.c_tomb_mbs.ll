; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_wide.c_tomb_mbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_wide.c_tomb_mbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomb_mbs(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, -16777216
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 16711680
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 3, i32* %6, align 4
  br label %26

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 65280
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 2, i32* %6, align 4
  br label %25

24:                                               ; preds = %19
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %23
  br label %26

26:                                               ; preds = %25, %18
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %32, %27
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 255
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 8
  store i32 %42, i32* %4, align 4
  br label %29

43:                                               ; preds = %29
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
