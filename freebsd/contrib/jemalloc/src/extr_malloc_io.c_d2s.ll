; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_malloc_io.c_d2s.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_malloc_io.c_d2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8, i8*, i64*)* @d2s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @d2s(i32 %0, i8 signext %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %9, align 4
  br i1 %11, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %13, %4
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = call i8* @u2s(i32 %17, i32 10, i32 0, i8* %18, i64* %19)
  store i8* %20, i8** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i8 45, i8* %6, align 1
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i8, i8* %6, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %40 [
    i32 45, label %27
    i32 32, label %32
    i32 43, label %32
  ]

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %42

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %24, %24, %31
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 -1
  store i8* %34, i8** %7, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load i8, i8* %6, align 1
  %39 = load i8*, i8** %7, align 8
  store i8 %38, i8* %39, align 1
  br label %42

40:                                               ; preds = %24
  %41 = call i32 (...) @not_reached()
  br label %42

42:                                               ; preds = %40, %32, %30
  %43 = load i8*, i8** %7, align 8
  ret i8* %43
}

declare dso_local i8* @u2s(i32, i32, i32, i8*, i64*) #1

declare dso_local i32 @not_reached(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
