; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_standard_index_data.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_standard_index_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*)* @avi_write_standard_index_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @avi_write_standard_index_data(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %4, align 8
  %13 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %54, %1
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %14
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = call i32 @vc_container_writer_extraio_enable(%struct.TYPE_10__* %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @avi_write_standard_index_chunk(%struct.TYPE_10__* %27, i32 %28, i64 0)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %2, align 8
  br label %59

35:                                               ; preds = %26
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = call i64 @STREAM_POSITION(%struct.TYPE_10__* %36)
  %38 = sub nsw i64 %37, 8
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %35, %20
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = call i32 @vc_container_writer_extraio_disable(%struct.TYPE_10__* %40, i32* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @avi_write_standard_index_chunk(%struct.TYPE_10__* %44, i32 %45, i64 %46)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i64, i64* %5, align 8
  store i64 %52, i64* %2, align 8
  br label %59

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %14

57:                                               ; preds = %14
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* %2, align 8
  br label %59

59:                                               ; preds = %57, %51, %33
  %60 = load i64, i64* %2, align 8
  ret i64 %60
}

declare dso_local i32 @vc_container_writer_extraio_enable(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @avi_write_standard_index_chunk(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_10__*) #1

declare dso_local i32 @vc_container_writer_extraio_disable(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
