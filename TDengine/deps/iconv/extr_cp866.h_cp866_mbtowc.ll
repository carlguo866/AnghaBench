; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp866.h_cp866_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp866.h_cp866_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp866_2uni = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cp866_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp866_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %9, align 1
  %12 = load i8, i8* %9, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8, i8* %9, align 1
  %17 = zext i8 %16 to i64
  %18 = load i64*, i64** %6, align 8
  store i64 %17, i64* %18, align 8
  br label %38

19:                                               ; preds = %4
  %20 = load i8, i8* %9, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp slt i32 %21, 176
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i64
  %26 = add nsw i64 %25, 912
  %27 = load i64*, i64** %6, align 8
  store i64 %26, i64* %27, align 8
  br label %37

28:                                               ; preds = %19
  %29 = load i64*, i64** @cp866_2uni, align 8
  %30 = load i8, i8* %9, align 1
  %31 = zext i8 %30 to i32
  %32 = sub nsw i32 %31, 176
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %29, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %6, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %28, %23
  br label %38

38:                                               ; preds = %37, %15
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
