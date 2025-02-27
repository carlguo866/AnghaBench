; ModuleID = '/home/carl/AnghaBench/streem/src/extr_latch.c_concat_start.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_latch.c_concat_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.concat_data* }
%struct.concat_data = type { i64, i32* }

@concat_iter = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @concat_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_start(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.concat_data*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.concat_data*, %struct.concat_data** %7, align 8
  store %struct.concat_data* %8, %struct.concat_data** %5, align 8
  %9 = load %struct.concat_data*, %struct.concat_data** %5, align 8
  %10 = icmp ne %struct.concat_data* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.concat_data*, %struct.concat_data** %5, align 8
  %13 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.concat_data*, %struct.concat_data** %5, align 8
  %16 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = load i32, i32* @concat_iter, align 4
  %22 = call i32 @strm_latch_receive(i32 %19, %struct.TYPE_4__* %20, i32 %21)
  br label %23

23:                                               ; preds = %11, %2
  %24 = load i32, i32* @STRM_OK, align 4
  ret i32 %24
}

declare dso_local i32 @strm_latch_receive(i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
