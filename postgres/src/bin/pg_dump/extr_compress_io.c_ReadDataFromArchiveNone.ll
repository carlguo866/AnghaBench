; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_compress_io.c_ReadDataFromArchiveNone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_compress_io.c_ReadDataFromArchiveNone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZLIB_OUT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64 (i32*, i8**, i64*)*)* @ReadDataFromArchiveNone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReadDataFromArchiveNone(i32* %0, i64 (i32*, i8**, i64*)* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64 (i32*, i8**, i64*)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 (i32*, i8**, i64*)* %1, i64 (i32*, i8**, i64*)** %4, align 8
  %8 = load i64, i64* @ZLIB_OUT_SIZE, align 8
  %9 = call i8* @pg_malloc(i64 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i64, i64* @ZLIB_OUT_SIZE, align 8
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %16, %2
  %12 = load i64 (i32*, i8**, i64*)*, i64 (i32*, i8**, i64*)** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 %12(i32* %13, i8** %6, i64* %7)
  store i64 %14, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @ahwrite(i8* %17, i32 1, i64 %18, i32* %19)
  br label %11

21:                                               ; preds = %11
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @free(i8* %22)
  ret void
}

declare dso_local i8* @pg_malloc(i64) #1

declare dso_local i32 @ahwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
