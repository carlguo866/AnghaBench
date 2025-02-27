; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmdec.c_rm_read_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmdec.c_rm_read_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ff_rm_metadata = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32)* @rm_read_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm_read_metadata(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %43, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32*, i32** @ff_rm_metadata, align 8
  %13 = call i32 @FF_ARRAY_ELEMS(i32* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @avio_rb16(i32* %19)
  br label %24

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @avio_r8(i32* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %20, %18 ], [ %23, %21 ]
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @get_strl(i32* %29, i8* %30, i32 1024, i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** @ff_rm_metadata, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %41 = call i32 @av_dict_set(i32* %34, i32 %39, i8* %40, i32 0)
  br label %42

42:                                               ; preds = %28, %24
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %10

46:                                               ; preds = %10
  ret void
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @get_strl(i32*, i8*, i32, i32) #1

declare dso_local i32 @av_dict_set(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
