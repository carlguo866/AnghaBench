; ModuleID = '/home/carl/AnghaBench/zstd/tests/fuzz/extr_simple_compress.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/fuzz/extr_simple_compress.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kMinClevel = common dso_local global i32 0, align 4
@kMaxClevel = common dso_local global i32 0, align 4
@cctx = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32* @FUZZ_dataProducer_create(i32* %10, i64 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @FUZZ_dataProducer_reserveDataPrefix(i32* %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @ZSTD_compressBound(i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @FUZZ_dataProducer_uint32Range(i32* %17, i32 0, i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @kMinClevel, align 4
  %22 = load i32, i32* @kMaxClevel, align 4
  %23 = call i32 @FUZZ_dataProducer_int32Range(i32* %20, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i8*, i8** @cctx, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = call i8* (...) @ZSTD_createCCtx()
  store i8* %27, i8** @cctx, align 8
  %28 = load i8*, i8** @cctx, align 8
  %29 = call i32 @FUZZ_ASSERT(i8* %28)
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i64, i64* %7, align 8
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @FUZZ_ASSERT(i8* %33)
  %35 = load i8*, i8** @cctx, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ZSTD_compressCCtx(i8* %35, i8* %36, i64 %37, i32* %38, i64 %39, i32 %40)
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @FUZZ_dataProducer_free(i32* %44)
  %46 = load i8*, i8** @cctx, align 8
  %47 = call i32 @ZSTD_freeCCtx(i8* %46)
  store i8* null, i8** @cctx, align 8
  ret i32 0
}

declare dso_local i32* @FUZZ_dataProducer_create(i32*, i64) #1

declare dso_local i64 @FUZZ_dataProducer_reserveDataPrefix(i32*) #1

declare dso_local i64 @ZSTD_compressBound(i64) #1

declare dso_local i64 @FUZZ_dataProducer_uint32Range(i32*, i32, i64) #1

declare dso_local i32 @FUZZ_dataProducer_int32Range(i32*, i32, i32) #1

declare dso_local i8* @ZSTD_createCCtx(...) #1

declare dso_local i32 @FUZZ_ASSERT(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ZSTD_compressCCtx(i8*, i8*, i64, i32*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FUZZ_dataProducer_free(i32*) #1

declare dso_local i32 @ZSTD_freeCCtx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
