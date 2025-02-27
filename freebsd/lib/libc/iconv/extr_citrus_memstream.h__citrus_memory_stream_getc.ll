; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.h__citrus_memory_stream_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.h__citrus_memory_stream_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_memory_stream = type { i32, i32 }

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_memory_stream*)* @_citrus_memory_stream_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_memory_stream_getc(%struct._citrus_memory_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._citrus_memory_stream*, align 8
  store %struct._citrus_memory_stream* %0, %struct._citrus_memory_stream** %3, align 8
  %4 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %3, align 8
  %5 = call i64 @_citrus_memory_stream_iseof(%struct._citrus_memory_stream* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EOF, align 4
  store i32 %8, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  %10 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %3, align 8
  %11 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %10, i32 0, i32 1
  %12 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %3, align 8
  %13 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = call i32 @_citrus_region_peek8(i32* %11, i32 %14)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %9, %7
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @_citrus_memory_stream_iseof(%struct._citrus_memory_stream*) #1

declare dso_local i32 @_citrus_region_peek8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
