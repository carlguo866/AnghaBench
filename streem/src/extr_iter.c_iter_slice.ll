; ModuleID = '/home/carl/AnghaBench/streem/src/extr_iter.c_iter_slice.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_iter.c_iter_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.slice_data* }
%struct.slice_data = type { i64, i64, i32* }

@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @iter_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_slice(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.slice_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.slice_data*, %struct.slice_data** %9, align 8
  store %struct.slice_data* %10, %struct.slice_data** %5, align 8
  %11 = load %struct.slice_data*, %struct.slice_data** %5, align 8
  %12 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.slice_data*, %struct.slice_data** %5, align 8
  %16 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.slice_data*, %struct.slice_data** %5, align 8
  %19 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32 %14, i32* %22, align 4
  %23 = load %struct.slice_data*, %struct.slice_data** %5, align 8
  %24 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.slice_data*, %struct.slice_data** %5, align 8
  %30 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @strm_ary_new(i32* %31, i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.slice_data*, %struct.slice_data** %5, align 8
  %35 = getelementptr inbounds %struct.slice_data, %struct.slice_data* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @strm_ary_value(i32 %37)
  %39 = call i32 @strm_emit(%struct.TYPE_4__* %36, i32 %38, i32* null)
  br label %40

40:                                               ; preds = %28, %2
  %41 = load i32, i32* @STRM_OK, align 4
  ret i32 %41
}

declare dso_local i32 @strm_ary_new(i32*, i64) #1

declare dso_local i32 @strm_emit(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @strm_ary_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
