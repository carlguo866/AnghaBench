; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_cb.c_get_size.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_cb.c_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.priv* }
%struct.priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_size(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %4, align 8
  %9 = load %struct.priv*, %struct.priv** %4, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64 (i32)*, i64 (i32)** %11, align 8
  %13 = icmp ne i64 (i32)* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64 (i32)*, i64 (i32)** %17, align 8
  %19 = load %struct.priv*, %struct.priv** %4, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 %18(i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %2, align 8
  br label %30

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %1
  store i64 -1, i64* %2, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i64, i64* %2, align 8
  ret i64 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
