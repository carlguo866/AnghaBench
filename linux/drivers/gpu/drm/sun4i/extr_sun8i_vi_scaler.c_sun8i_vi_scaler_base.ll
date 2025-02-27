; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_scaler.c_sun8i_vi_scaler_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_vi_scaler.c_sun8i_vi_scaler_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun8i_mixer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DE3_VI_SCALER_UNIT_BASE = common dso_local global i64 0, align 8
@DE3_VI_SCALER_UNIT_SIZE = common dso_local global i32 0, align 4
@DE2_VI_SCALER_UNIT_BASE = common dso_local global i64 0, align 8
@DE2_VI_SCALER_UNIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sun8i_mixer*, i32)* @sun8i_vi_scaler_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun8i_vi_scaler_base(%struct.sun8i_mixer* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sun8i_mixer*, align 8
  %5 = alloca i32, align 4
  store %struct.sun8i_mixer* %0, %struct.sun8i_mixer** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sun8i_mixer*, %struct.sun8i_mixer** %4, align 8
  %7 = getelementptr inbounds %struct.sun8i_mixer, %struct.sun8i_mixer* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i64, i64* @DE3_VI_SCALER_UNIT_BASE, align 8
  %14 = load i32, i32* @DE3_VI_SCALER_UNIT_SIZE, align 4
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %13, %17
  store i64 %18, i64* %3, align 8
  br label %26

19:                                               ; preds = %2
  %20 = load i64, i64* @DE2_VI_SCALER_UNIT_BASE, align 8
  %21 = load i32, i32* @DE2_VI_SCALER_UNIT_SIZE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %19, %12
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
