; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc.c_ff_quantize_band_cost_cache_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc.c_ff_quantize_band_cost_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AACEncContext = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_quantize_band_cost_cache_init(%struct.AACEncContext* %0) #0 {
  %2 = alloca %struct.AACEncContext*, align 8
  store %struct.AACEncContext* %0, %struct.AACEncContext** %2, align 8
  %3 = load %struct.AACEncContext*, %struct.AACEncContext** %2, align 8
  %4 = getelementptr inbounds %struct.AACEncContext, %struct.AACEncContext* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load %struct.AACEncContext*, %struct.AACEncContext** %2, align 8
  %8 = getelementptr inbounds %struct.AACEncContext, %struct.AACEncContext* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.AACEncContext*, %struct.AACEncContext** %2, align 8
  %13 = getelementptr inbounds %struct.AACEncContext, %struct.AACEncContext* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  %16 = load %struct.AACEncContext*, %struct.AACEncContext** %2, align 8
  %17 = getelementptr inbounds %struct.AACEncContext, %struct.AACEncContext* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
