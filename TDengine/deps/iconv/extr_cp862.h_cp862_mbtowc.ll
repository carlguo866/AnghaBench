; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp862.h_cp862_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp862.h_cp862_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp862_2uni = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cp862_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp862_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
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
  br label %28

19:                                               ; preds = %4
  %20 = load i64*, i64** @cp862_2uni, align 8
  %21 = load i8, i8* %9, align 1
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 %22, 128
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %20, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %6, align 8
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %19, %15
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
