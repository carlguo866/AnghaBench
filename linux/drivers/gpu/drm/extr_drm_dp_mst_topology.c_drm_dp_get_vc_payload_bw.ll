; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_get_vc_payload_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_get_vc_payload_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"invalid link bandwidth in DPCD: %x (link count: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @drm_dp_get_vc_payload_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_get_vc_payload_bw(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %9 [
    i32 131, label %13
    i32 130, label %17
    i32 129, label %21
    i32 128, label %25
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  store i32 0, i32* %4, align 4
  br label %30

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 3, %14
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 5, %18
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %29

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 10, %22
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 15, %26
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %21, %17, %13
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %9
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
