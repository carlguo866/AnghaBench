; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_log.c_logCksumUnaligned.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_log.c_logCksumUnaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64*, i64*)* @logCksumUnaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logCksumUnaligned(i8* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i32], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 8
  %23 = mul nsw i32 %22, 8
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %52, %4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i64 @getU32le(i32* %36)
  %38 = load i64, i64* %11, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* %10, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = call i64 @getU32le(i32* %46)
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %32
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 8
  store i32 %54, i32* %13, align 4
  br label %28

55:                                               ; preds = %28
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %94

59:                                               ; preds = %55
  %60 = bitcast [8 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 32, i1 false)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp sgt i32 %66, %67
  br label %69

69:                                               ; preds = %65, %59
  %70 = phi i1 [ false, %59 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %12, align 4
  %80 = sub nsw i32 %78, %79
  %81 = call i32 @memcpy(i32* %73, i32* %77, i32 %80)
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %83 = call i64 @getU32le(i32* %82)
  %84 = load i64, i64* %11, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i64, i64* %10, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %10, align 8
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 4
  %89 = call i64 @getU32le(i32* %88)
  %90 = load i64, i64* %10, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* %11, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %11, align 8
  br label %94

94:                                               ; preds = %69, %55
  %95 = load i64, i64* %10, align 8
  %96 = load i64*, i64** %7, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64*, i64** %8, align 8
  store i64 %97, i64* %98, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @getU32le(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
