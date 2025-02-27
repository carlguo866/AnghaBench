; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_enc.c_WebPPictureInitInternal.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_picture_enc.c_WebPPictureInitInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@WEBP_ENCODER_ABI_VERSION = common dso_local global i32 0, align 4
@DummyWriter = common dso_local global i32 0, align 4
@VP8_ENC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPPictureInitInternal(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @WEBP_ENCODER_ABI_VERSION, align 4
  %8 = call i64 @WEBP_ABI_IS_INCOMPATIBLE(i32 %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = call i32 @memset(%struct.TYPE_5__* %15, i32 0, i32 4)
  %17 = load i32, i32* @DummyWriter, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = load i32, i32* @VP8_ENC_OK, align 4
  %22 = call i32 @WebPEncodingSetError(%struct.TYPE_5__* %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %11
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @WEBP_ABI_IS_INCOMPATIBLE(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @WebPEncodingSetError(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
