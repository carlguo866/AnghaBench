; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/check/extr_sha256.c_process.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/check/extr_sha256.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i64, i64* %4, align 8
  %7 = icmp ult i64 %6, 16
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bswap32(i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %17
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %8
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %4, align 8
  br label %5

22:                                               ; preds = %5
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %29 = call i32 @transform(i32 %27, i32* %28)
  ret void
}

declare dso_local i32 @bswap32(i32) #1

declare dso_local i32 @transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
