; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_CountDefinedBits.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_CountDefinedBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @CountDefinedBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CountDefinedBits(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %3, align 8
  %17 = load i32, i32* %15, align 4
  store i32 %17, i32* %5, align 4
  store i32 8, i32* %6, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = lshr i32 %21, %22
  %24 = and i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* %7, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %18
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %4, align 8
  br label %8

31:                                               ; preds = %8
  %32 = load i64, i64* %7, align 8
  ret i64 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
