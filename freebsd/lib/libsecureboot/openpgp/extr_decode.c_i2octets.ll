; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_decode.c_i2octets.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsecureboot/openpgp/extr_decode.c_i2octets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2octets.o = internal global [16 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @i2octets(i32 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 15
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %38

11:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %32, %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %19, 8
  %21 = shl i32 255, %20
  %22 = sext i32 %21 to i64
  %23 = and i64 %18, %22
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 8
  %26 = zext i32 %25 to i64
  %27 = lshr i64 %23, %26
  %28 = trunc i64 %27 to i8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* @i2octets.o, i64 0, i64 %30
  store i8 %28, i8* %31, align 1
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %14

37:                                               ; preds = %14
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @i2octets.o, i64 0, i64 0), i8** %3, align 8
  br label %38

38:                                               ; preds = %37, %10
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
