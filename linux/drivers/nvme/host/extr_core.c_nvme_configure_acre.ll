; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_configure_acre.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_configure_acre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32* }
%struct.nvme_feat_host_behavior = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NVME_ENABLE_ACRE = common dso_local global i32 0, align 4
@NVME_FEAT_HOST_BEHAVIOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*)* @nvme_configure_acre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_configure_acre(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca %struct.nvme_feat_host_behavior*, align 8
  %5 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  %6 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nvme_feat_host_behavior* @kzalloc(i32 4, i32 %14)
  store %struct.nvme_feat_host_behavior* %15, %struct.nvme_feat_host_behavior** %4, align 8
  %16 = load %struct.nvme_feat_host_behavior*, %struct.nvme_feat_host_behavior** %4, align 8
  %17 = icmp ne %struct.nvme_feat_host_behavior* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %30

19:                                               ; preds = %13
  %20 = load i32, i32* @NVME_ENABLE_ACRE, align 4
  %21 = load %struct.nvme_feat_host_behavior*, %struct.nvme_feat_host_behavior** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_feat_host_behavior, %struct.nvme_feat_host_behavior* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %24 = load i32, i32* @NVME_FEAT_HOST_BEHAVIOR, align 4
  %25 = load %struct.nvme_feat_host_behavior*, %struct.nvme_feat_host_behavior** %4, align 8
  %26 = call i32 @nvme_set_features(%struct.nvme_ctrl* %23, i32 %24, i32 0, %struct.nvme_feat_host_behavior* %25, i32 4, i32* null)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.nvme_feat_host_behavior*, %struct.nvme_feat_host_behavior** %4, align 8
  %28 = call i32 @kfree(%struct.nvme_feat_host_behavior* %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %19, %18, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.nvme_feat_host_behavior* @kzalloc(i32, i32) #1

declare dso_local i32 @nvme_set_features(%struct.nvme_ctrl*, i32, i32, %struct.nvme_feat_host_behavior*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.nvme_feat_host_behavior*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
