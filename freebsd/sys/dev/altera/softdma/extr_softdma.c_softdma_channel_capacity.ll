; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_channel_capacity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/softdma/extr_softdma.c_softdma_channel_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.softdma_channel = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i64*)* @softdma_channel_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softdma_channel_capacity(i32 %0, %struct.TYPE_3__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.softdma_channel*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.softdma_channel*
  store %struct.softdma_channel* %12, %struct.softdma_channel** %7, align 8
  %13 = load %struct.softdma_channel*, %struct.softdma_channel** %7, align 8
  %14 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.softdma_channel*, %struct.softdma_channel** %7, align 8
  %17 = getelementptr inbounds %struct.softdma_channel, %struct.softdma_channel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = sub nsw i64 %19, 1
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64*, i64** %6, align 8
  store i64 %21, i64* %22, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
