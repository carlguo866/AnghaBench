; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/des/extr_des_ecb.c_des_ecb3_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/des/extr_des_ecb.c_des_ecb3_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @des_ecb3_encrypt(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %16, align 8
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %17, align 8
  %20 = load i8*, i8** %16, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @c2l(i8* %20, i32 %21)
  %23 = load i8*, i8** %16, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @c2l(i8* %23, i32 %24)
  %26 = load i32, i32* %13, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %14, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %6
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @des_encrypt3(i32* %33, i32 %34, i32 %35, i32 %36)
  br label %44

38:                                               ; preds = %6
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @des_decrypt3(i32* %39, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i8*, i8** %17, align 8
  %51 = call i32 @l2c(i32 %49, i8* %50)
  %52 = load i32, i32* %14, align 4
  %53 = load i8*, i8** %17, align 8
  %54 = call i32 @l2c(i32 %52, i8* %53)
  ret void
}

declare dso_local i32 @c2l(i8*, i32) #1

declare dso_local i32 @des_encrypt3(i32*, i32, i32, i32) #1

declare dso_local i32 @des_decrypt3(i32*, i32, i32, i32) #1

declare dso_local i32 @l2c(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
