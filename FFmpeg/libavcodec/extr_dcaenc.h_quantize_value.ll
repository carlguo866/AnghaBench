; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.h_quantize_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.h_quantize_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @quantize_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quantize_value(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.TYPE_3__* %3 to i64*
  store i64 %1, i64* %6, align 4
  store i32 %0, i32* %4, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 1
  %10 = shl i32 1, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mul32(i32 %11, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %17, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @mul32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
