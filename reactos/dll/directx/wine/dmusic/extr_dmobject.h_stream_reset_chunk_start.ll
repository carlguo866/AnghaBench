; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_dmobject.h_stream_reset_chunk_start.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_dmobject.h_stream_reset_chunk_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chunk_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.chunk_entry*)* @stream_reset_chunk_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_reset_chunk_start(i32* %0, %struct.chunk_entry* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.chunk_entry*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %3, align 8
  store %struct.chunk_entry* %1, %struct.chunk_entry** %4, align 8
  %6 = load %struct.chunk_entry*, %struct.chunk_entry** %4, align 8
  %7 = getelementptr inbounds %struct.chunk_entry, %struct.chunk_entry* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @STREAM_SEEK_SET, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @IStream_Seek(i32* %11, i32 %14, i32 %12, i32* null)
  ret i32 %15
}

declare dso_local i32 @IStream_Seek(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
