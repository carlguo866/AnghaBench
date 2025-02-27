; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_seek_beginning.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libff/libff/extr_ff-demuxer.c_seek_beginning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_demuxer = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AVSEEK_FLAG_FRAME = common dso_local global i32 0, align 4
@AVSEEK_FLAG_BACKWARD = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"looping media %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ff_demuxer*)* @seek_beginning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seek_beginning(%struct.ff_demuxer* %0) #0 {
  %2 = alloca %struct.ff_demuxer*, align 8
  store %struct.ff_demuxer* %0, %struct.ff_demuxer** %2, align 8
  %3 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %4 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %3, i32 0, i32 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @AVSEEK_FLAG_FRAME, align 4
  %12 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %13 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %15 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  br label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  %18 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %19 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %21 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %26 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %25, i32 0, i32 4
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %16, %10
  %28 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %29 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %31 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %33 = load %struct.ff_demuxer*, %struct.ff_demuxer** %2, align 8
  %34 = getelementptr inbounds %struct.ff_demuxer, %struct.ff_demuxer* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @av_log(i32* null, i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %35)
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
