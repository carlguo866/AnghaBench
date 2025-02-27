; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv_timeline.c_has_source_request.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv_timeline.c_has_source_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_ctx = type { i32, i32* }
%struct.matroska_segment_uid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tl_ctx*, %struct.matroska_segment_uid*)* @has_source_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_source_request(%struct.tl_ctx* %0, %struct.matroska_segment_uid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_ctx*, align 8
  %5 = alloca %struct.matroska_segment_uid*, align 8
  %6 = alloca i32, align 4
  store %struct.tl_ctx* %0, %struct.tl_ctx** %4, align 8
  store %struct.matroska_segment_uid* %1, %struct.matroska_segment_uid** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %25, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.tl_ctx*, %struct.tl_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load %struct.tl_ctx*, %struct.tl_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.tl_ctx, %struct.tl_ctx* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load %struct.matroska_segment_uid*, %struct.matroska_segment_uid** %5, align 8
  %21 = call i64 @demux_matroska_uid_cmp(i32* %19, %struct.matroska_segment_uid* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %29

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %7

28:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @demux_matroska_uid_cmp(i32*, %struct.matroska_segment_uid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
