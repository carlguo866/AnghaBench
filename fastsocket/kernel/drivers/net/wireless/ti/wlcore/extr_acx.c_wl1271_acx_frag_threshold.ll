; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_frag_threshold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_frag_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.acx_frag_threshold = type { i32 }

@IEEE80211_MAX_FRAG_THRESHOLD = common dso_local global i64 0, align 8
@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"acx frag threshold: %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_FRAG_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Setting of frag threshold failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_frag_threshold(%struct.wl1271* %0, i64 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.acx_frag_threshold*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @IEEE80211_MAX_FRAG_THRESHOLD, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @DEBUG_ACX, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @wl1271_debug(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.acx_frag_threshold* @kzalloc(i32 4, i32 %20)
  store %struct.acx_frag_threshold* %21, %struct.acx_frag_threshold** %5, align 8
  %22 = load %struct.acx_frag_threshold*, %struct.acx_frag_threshold** %5, align 8
  %23 = icmp ne %struct.acx_frag_threshold* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %43

27:                                               ; preds = %16
  %28 = load i64, i64* %4, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = load %struct.acx_frag_threshold*, %struct.acx_frag_threshold** %5, align 8
  %32 = getelementptr inbounds %struct.acx_frag_threshold, %struct.acx_frag_threshold* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %34 = load i32, i32* @ACX_FRAG_CFG, align 4
  %35 = load %struct.acx_frag_threshold*, %struct.acx_frag_threshold** %5, align 8
  %36 = call i32 @wl1271_cmd_configure(%struct.wl1271* %33, i32 %34, %struct.acx_frag_threshold* %35, i32 4)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @wl1271_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %43

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %39, %24
  %44 = load %struct.acx_frag_threshold*, %struct.acx_frag_threshold** %5, align 8
  %45 = call i32 @kfree(%struct.acx_frag_threshold* %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @wl1271_debug(i32, i8*, i64) #1

declare dso_local %struct.acx_frag_threshold* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_frag_threshold*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_frag_threshold*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
