; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v05.c_HUFv05_decodeStreamX4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v05.c_HUFv05_decodeStreamX4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITv05_DStream_unfinished = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32*, i32)* @HUFv05_decodeStreamX4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUFv05_decodeStreamX4(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %11, align 8
  br label %13

13:                                               ; preds = %25, %5
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @BITv05_reloadDStream(i32* %14)
  %16 = load i64, i64* @BITv05_DStream_unfinished, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 -7
  %22 = icmp ult i32* %19, %21
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %38

25:                                               ; preds = %23
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @HUFv05_DECODE_SYMBOLX4_2(i32* %26, i32* %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @HUFv05_DECODE_SYMBOLX4_1(i32* %29, i32* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @HUFv05_DECODE_SYMBOLX4_2(i32* %32, i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @HUFv05_DECODE_SYMBOLX4_0(i32* %35, i32* %36)
  br label %13

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @BITv05_reloadDStream(i32* %40)
  %42 = load i64, i64* @BITv05_DStream_unfinished, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 -2
  %48 = icmp ule i32* %45, %47
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @HUFv05_DECODE_SYMBOLX4_0(i32* %52, i32* %53)
  br label %39

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %61, %55
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 -2
  %60 = icmp ule i32* %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @HUFv05_DECODE_SYMBOLX4_0(i32* %62, i32* %63)
  br label %56

65:                                               ; preds = %56
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ult i32* %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @HUFv05_decodeLastSymbolX4(i32* %70, i32* %71, i32* %72, i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %6, align 8
  br label %78

78:                                               ; preds = %69, %65
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  ret i64 %84
}

declare dso_local i64 @BITv05_reloadDStream(i32*) #1

declare dso_local i32 @HUFv05_DECODE_SYMBOLX4_2(i32*, i32*) #1

declare dso_local i32 @HUFv05_DECODE_SYMBOLX4_1(i32*, i32*) #1

declare dso_local i32 @HUFv05_DECODE_SYMBOLX4_0(i32*, i32*) #1

declare dso_local i32 @HUFv05_decodeLastSymbolX4(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
