; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_drop_path.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_drop_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }

@FZ_PATH_PACKED_FLAT = common dso_local global i64 0, align 8
@FZ_PATH_UNPACKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_drop_path(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = call i64 @fz_drop_imp8(i32* %7, %struct.TYPE_5__* %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FZ_PATH_PACKED_FLAT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call i32 @fz_free(i32* %20, %struct.TYPE_5__* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @fz_free(i32* %25, %struct.TYPE_5__* %28)
  br label %30

30:                                               ; preds = %19, %13
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FZ_PATH_UNPACKED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = call i32 @fz_free(i32* %37, %struct.TYPE_5__* %38)
  br label %40

40:                                               ; preds = %36, %30
  br label %41

41:                                               ; preds = %40, %2
  ret void
}

declare dso_local i64 @fz_drop_imp8(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @fz_free(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
