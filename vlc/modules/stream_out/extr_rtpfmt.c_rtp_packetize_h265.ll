; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_h265.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtpfmt.c_rtp_packetize_h265.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @rtp_packetize_h265 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtp_packetize_h265(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @hxxx_iterator_init(%struct.TYPE_7__* %5, i32 %10, i64 %13, i32 0)
  br label %15

15:                                               ; preds = %35, %2
  %16 = call i64 @hxxx_annexb_iterate_next(%struct.TYPE_7__* %5, i32** %6, i64* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %15
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VLC_TICK_INVALID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  br label %35

31:                                               ; preds = %18
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i64 [ %30, %27 ], [ %34, %31 ]
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %42, %44
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = mul i64 %49, %50
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = udiv i64 %51, %54
  %56 = call i32 @rtp_packetize_h265_nal(i32* %19, i32* %20, i64 %21, i64 %36, i64 %39, i32 %46, i64 %55)
  br label %15

57:                                               ; preds = %15
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = call i32 @block_Release(%struct.TYPE_8__* %58)
  %60 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %60
}

declare dso_local i32 @hxxx_iterator_init(%struct.TYPE_7__*, i32, i64, i32) #1

declare dso_local i64 @hxxx_annexb_iterate_next(%struct.TYPE_7__*, i32**, i64*) #1

declare dso_local i32 @rtp_packetize_h265_nal(i32*, i32*, i64, i64, i64, i32, i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
