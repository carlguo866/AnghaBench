; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_intel_sdvo = type { i32 }
%struct.psb_intel_sdvo_dtd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psb_intel_sdvo*, i64, %struct.psb_intel_sdvo_dtd*)* @psb_intel_sdvo_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_set_timing(%struct.psb_intel_sdvo* %0, i64 %1, %struct.psb_intel_sdvo_dtd* %2) #0 {
  %4 = alloca %struct.psb_intel_sdvo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.psb_intel_sdvo_dtd*, align 8
  store %struct.psb_intel_sdvo* %0, %struct.psb_intel_sdvo** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.psb_intel_sdvo_dtd* %2, %struct.psb_intel_sdvo_dtd** %6, align 8
  %7 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %6, align 8
  %10 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %9, i32 0, i32 1
  %11 = call i64 @psb_intel_sdvo_set_value(%struct.psb_intel_sdvo* %7, i64 %8, i32* %10, i32 4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %15, 1
  %17 = load %struct.psb_intel_sdvo_dtd*, %struct.psb_intel_sdvo_dtd** %6, align 8
  %18 = getelementptr inbounds %struct.psb_intel_sdvo_dtd, %struct.psb_intel_sdvo_dtd* %17, i32 0, i32 0
  %19 = call i64 @psb_intel_sdvo_set_value(%struct.psb_intel_sdvo* %14, i64 %16, i32* %18, i32 4)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %13, %3
  %22 = phi i1 [ false, %3 ], [ %20, %13 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i64 @psb_intel_sdvo_set_value(%struct.psb_intel_sdvo*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
