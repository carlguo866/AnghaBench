; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_cmp_source_line.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_cmp_source_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotation_line = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.annotation_line*, %struct.annotation_line*)* @cmp_source_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_source_line(%struct.annotation_line* %0, %struct.annotation_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.annotation_line*, align 8
  %5 = alloca %struct.annotation_line*, align 8
  %6 = alloca i32, align 4
  store %struct.annotation_line* %0, %struct.annotation_line** %4, align 8
  store %struct.annotation_line* %1, %struct.annotation_line** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %51, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.annotation_line*, %struct.annotation_line** %4, align 8
  %10 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %7
  %14 = load %struct.annotation_line*, %struct.annotation_line** %4, align 8
  %15 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.annotation_line*, %struct.annotation_line** %5, align 8
  %23 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %21, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  br label %51

32:                                               ; preds = %13
  %33 = load %struct.annotation_line*, %struct.annotation_line** %4, align 8
  %34 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.annotation_line*, %struct.annotation_line** %5, align 8
  %42 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %40, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %55

51:                                               ; preds = %31
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %7

54:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
