; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-pe.h_read_sleb128.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-pe.h_read_sleb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @read_sleb128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_sleb128(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %3, align 8
  %11 = load i8, i8* %9, align 1
  store i8 %11, i8* %6, align 1
  %12 = load i8, i8* %6, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 127
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add i32 %19, 7
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %8
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %8, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %28, 32
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 64
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 1, %36
  %38 = sub nsw i32 0, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %35, %30, %26
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** %4, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
