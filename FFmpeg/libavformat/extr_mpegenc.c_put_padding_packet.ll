; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegenc.c_put_padding_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegenc.c_put_padding_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PADDING_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32)* @put_padding_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_padding_packet(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @PADDING_STREAM, align 4
  %14 = call i32 @avio_wb32(i32* %12, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 6
  %18 = call i32 @avio_wb16(i32* %15, i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @avio_w8(i32* %24, i32 15)
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 7
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 6
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %23
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %39, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @avio_w8(i32* %37, i32 255)
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %32

42:                                               ; preds = %32
  ret void
}

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
