; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/sha3/generic64lc/extr_KeccakP-1600-opt64.c_KeccakP1600_ExtractAndAddBytesInLane.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/sha3/generic64lc/extr_KeccakP-1600-opt64.c_KeccakP1600_ExtractAndAddBytesInLane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @KeccakP1600_ExtractAndAddBytesInLane(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1 x i32], align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %50, %6
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %14, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds [1 x i32], [1 x i32]* %15, i64 0, i64 0
  %36 = bitcast i32* %35 to i8*
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %14, align 4
  %39 = add i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = xor i32 %34, %43
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %14, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 %45, i8* %49, align 1
  br label %50

50:                                               ; preds = %28
  %51 = load i32, i32* %14, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %24

53:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
