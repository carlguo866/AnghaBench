; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_memcmp.c_memcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_memcmp.c_memcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcmp(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %40, %3
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %7, align 8
  %17 = icmp ugt i64 %15, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %8, align 8
  %21 = load i8, i8* %19, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %9, align 8
  %25 = load i8, i8* %23, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %22, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %18
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 -1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp slt i32 %32, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 -1, i32 1
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %18
  br label %14

41:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
