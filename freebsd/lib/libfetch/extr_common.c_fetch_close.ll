; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__*, i32, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetch_close(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* %6, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @close(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @free(%struct.TYPE_4__* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = call i32 @free(%struct.TYPE_4__* %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %11, %10
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
