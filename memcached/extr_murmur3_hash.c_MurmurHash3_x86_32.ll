; ModuleID = '/home/carl/AnghaBench/memcached/extr_murmur3_hash.c_MurmurHash3_x86_32.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_murmur3_hash.c_MurmurHash3_x86_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MurmurHash3_x86_32(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = udiv i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 -862048943, i32* %8, align 4
  store i32 461845907, i32* %9, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %50, %2
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @getblock32(i32* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %12, align 4
  %36 = mul nsw i32 %35, %34
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @ROTL32(i32 %37, i32 15)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %12, align 4
  %41 = mul nsw i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = xor i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ROTL32(i32 %45, i32 13)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 5
  %49 = add i32 %48, -430675100
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %27

53:                                               ; preds = %27
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32* %58, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %59 = load i64, i64* %4, align 8
  %60 = and i64 %59, 3
  switch i64 %60, label %92 [
    i64 3, label %61
    i64 2, label %68
    i64 1, label %75
  ]

61:                                               ; preds = %53
  %62 = load i32*, i32** %13, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %14, align 4
  %67 = xor i32 %66, %65
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %53, %61
  %69 = load i32*, i32** %13, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = load i32, i32* %14, align 4
  %74 = xor i32 %73, %72
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %53, %68
  %76 = load i32*, i32** %13, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %14, align 4
  %80 = xor i32 %79, %78
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %14, align 4
  %83 = mul nsw i32 %82, %81
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @ROTL32(i32 %84, i32 15)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %14, align 4
  %88 = mul nsw i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %7, align 4
  %91 = xor i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %75, %53
  %93 = load i64, i64* %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = xor i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @fmix32(i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @getblock32(i32*, i32) #1

declare dso_local i32 @ROTL32(i32, i32) #1

declare dso_local i32 @fmix32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
