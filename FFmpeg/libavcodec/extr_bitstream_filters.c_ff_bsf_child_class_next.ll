; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bitstream_filters.c_ff_bsf_child_class_next.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bitstream_filters.c_ff_bsf_child_class_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ff_bsf_child_class_next(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %4, align 8
  store i8* null, i8** %5, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = call %struct.TYPE_3__* @av_bsf_iterate(i8** %5)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %4, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i1 [ false, %6 ], [ %11, %9 ]
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %22

21:                                               ; preds = %14
  br label %6

22:                                               ; preds = %20, %12
  br label %23

23:                                               ; preds = %35, %22
  %24 = call %struct.TYPE_3__* @av_bsf_iterate(i8** %5)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %4, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %2, align 8
  br label %37

35:                                               ; preds = %26
  br label %23

36:                                               ; preds = %23
  store i32* null, i32** %2, align 8
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
}

declare dso_local %struct.TYPE_3__* @av_bsf_iterate(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
