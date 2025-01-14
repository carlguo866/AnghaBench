; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_hw.c_bochs_hw_load_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_hw.c_bochs_hw_load_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bochs_device = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bochs_hw_load_edid(%struct.bochs_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bochs_device*, align 8
  %4 = alloca [8 x i32], align 16
  store %struct.bochs_device* %0, %struct.bochs_device** %3, align 8
  %5 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %6 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = call i32 @bochs_get_edid_block(%struct.bochs_device* %11, i32* %12, i32 0, i32 %14)
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %17 = call i32 @drm_edid_header_is_valid(i32* %16)
  %18 = icmp ne i32 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %37

20:                                               ; preds = %10
  %21 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %22 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kfree(i32* %23)
  %25 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %26 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %25, i32 0, i32 1
  %27 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %28 = call i32* @drm_do_get_edid(i32* %26, i32 (%struct.bochs_device*, i32*, i32, i32)* @bochs_get_edid_block, %struct.bochs_device* %27)
  %29 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %30 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %32 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %37

36:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35, %19, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @bochs_get_edid_block(%struct.bochs_device*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @drm_edid_header_is_valid(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @drm_do_get_edid(i32*, i32 (%struct.bochs_device*, i32*, i32, i32)*, %struct.bochs_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
