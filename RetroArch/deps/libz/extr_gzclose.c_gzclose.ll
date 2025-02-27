; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_gzclose.c_gzclose.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_gzclose.c_gzclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@GZ_READ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzclose(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %8, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %4, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GZ_READ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @gzclose_r(i32* %18)
  br label %23

20:                                               ; preds = %9
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @gzclose_w(i32* %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ]
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %7
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @gzclose_r(i32*) #1

declare dso_local i32 @gzclose_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
