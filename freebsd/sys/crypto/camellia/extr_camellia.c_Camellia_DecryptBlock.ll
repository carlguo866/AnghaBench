; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/camellia/extr_camellia.c_Camellia_DecryptBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/camellia/extr_camellia.c_Camellia_DecryptBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Camellia_DecryptBlock(i32 %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [4 x i32], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @GETU32(i8* %10)
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %11, i32* %12, align 16
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  %15 = call i32 @GETU32(i8* %14)
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  %19 = call i32 @GETU32(i8* %18)
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 12
  %23 = call i32 @GETU32(i8* %22)
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %34 [
    i32 128, label %26
    i32 192, label %30
    i32 256, label %30
  ]

26:                                               ; preds = %4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %29 = call i32 @camellia_decrypt128(i32* %27, i32* %28)
  br label %35

30:                                               ; preds = %4, %4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %33 = call i32 @camellia_decrypt256(i32* %31, i32* %32)
  br label %35

34:                                               ; preds = %4
  br label %35

35:                                               ; preds = %34, %30, %26
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = call i32 @PUTU32(i8* %36, i32 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PUTU32(i8* %41, i32 %43)
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PUTU32(i8* %46, i32 %48)
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 12
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PUTU32(i8* %51, i32 %53)
  ret void
}

declare dso_local i32 @GETU32(i8*) #1

declare dso_local i32 @camellia_decrypt128(i32*, i32*) #1

declare dso_local i32 @camellia_decrypt256(i32*, i32*) #1

declare dso_local i32 @PUTU32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
