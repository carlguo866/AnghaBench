; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_alloc_base.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_alloc_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chunksize = common dso_local global i32 0, align 4
@config_valgrind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @chunk_alloc_base(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i32, i32* @chunksize, align 4
  %9 = call i8* @chunk_alloc_mmap(i64 %7, i32 %8, i32* %5, i32* %6)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %22

13:                                               ; preds = %1
  %14 = load i64, i64* @config_valgrind, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED(i8* %17, i64 %18)
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %2, align 8
  br label %22

22:                                               ; preds = %20, %12
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

declare dso_local i8* @chunk_alloc_mmap(i64, i32, i32*, i32*) #1

declare dso_local i32 @JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
