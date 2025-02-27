; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder.c_is_options_valid.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lzma/extr_lzma_encoder.c_is_options_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@MATCH_LEN_MIN = common dso_local global i64 0, align 8
@MATCH_LEN_MAX = common dso_local global i64 0, align 8
@LZMA_MODE_FAST = common dso_local global i64 0, align 8
@LZMA_MODE_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @is_options_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_options_valid(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = call i64 @is_lclppb_valid(%struct.TYPE_4__* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MATCH_LEN_MIN, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MATCH_LEN_MAX, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LZMA_MODE_FAST, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LZMA_MODE_NORMAL, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ true, %18 ], [ %29, %24 ]
  br label %32

32:                                               ; preds = %30, %12, %6, %1
  %33 = phi i1 [ false, %12 ], [ false, %6 ], [ false, %1 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i64 @is_lclppb_valid(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
