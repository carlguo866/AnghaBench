; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_buf_init.c_BufferShmemSize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_buf_init.c_BufferShmemSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NBuffers = common dso_local global i32 0, align 4
@PG_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BufferShmemSize() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @NBuffers, align 4
  %4 = call i32 @mul_size(i32 %3, i32 4)
  %5 = call i32 @add_size(i32 %2, i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @PG_CACHE_LINE_SIZE, align 4
  %8 = call i32 @add_size(i32 %6, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @NBuffers, align 4
  %11 = load i32, i32* @BLCKSZ, align 4
  %12 = call i32 @mul_size(i32 %10, i32 %11)
  %13 = call i32 @add_size(i32 %9, i32 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 (...) @StrategyShmemSize()
  %16 = call i32 @add_size(i32 %14, i32 %15)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @NBuffers, align 4
  %19 = call i32 @mul_size(i32 %18, i32 4)
  %20 = call i32 @add_size(i32 %17, i32 %19)
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @PG_CACHE_LINE_SIZE, align 4
  %23 = call i32 @add_size(i32 %21, i32 %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @NBuffers, align 4
  %26 = call i32 @mul_size(i32 %25, i32 4)
  %27 = call i32 @add_size(i32 %24, i32 %26)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @add_size(i32, i32) #1

declare dso_local i32 @mul_size(i32, i32) #1

declare dso_local i32 @StrategyShmemSize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
