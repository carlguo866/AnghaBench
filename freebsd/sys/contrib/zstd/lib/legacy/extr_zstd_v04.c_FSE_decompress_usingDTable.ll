; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v04.c_FSE_decompress_usingDTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v04.c_FSE_decompress_usingDTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32*)* @FSE_decompress_usingDTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FSE_decompress_usingDTable(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = call i32 @memcpy(%struct.TYPE_3__* %12, i32* %14, i32 8)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i64 @FSE_decompress_usingDTable_generic(i8* %21, i64 %22, i8* %23, i64 %24, i32* %25, i32 1)
  store i64 %26, i64* %6, align 8
  br label %34

27:                                               ; preds = %5
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i64 @FSE_decompress_usingDTable_generic(i8* %28, i64 %29, i8* %30, i64 %31, i32* %32, i32 0)
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i64, i64* %6, align 8
  ret i64 %35
}

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i64 @FSE_decompress_usingDTable_generic(i8*, i64, i8*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
