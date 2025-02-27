; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_toggle_streams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_toggle_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@nvme_admin_directive_send = common dso_local global i32 0, align 4
@NVME_NSID_ALL = common dso_local global i32 0, align 4
@NVME_DIR_SND_ID_OP_ENABLE = common dso_local global i32 0, align 4
@NVME_DIR_IDENTIFY = common dso_local global i32 0, align 4
@NVME_DIR_STREAMS = common dso_local global i32 0, align 4
@NVME_DIR_ENDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ctrl*, i32)* @nvme_toggle_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_toggle_streams(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_command, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.nvme_command* %5, i32 0, i32 24)
  %7 = load i32, i32* @nvme_admin_directive_send, align 4
  %8 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %5, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @NVME_NSID_ALL, align 4
  %11 = call i32 @cpu_to_le32(i32 %10)
  %12 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %5, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @NVME_DIR_SND_ID_OP_ENABLE, align 4
  %15 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %5, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @NVME_DIR_IDENTIFY, align 4
  %18 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %5, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @NVME_DIR_STREAMS, align 4
  %21 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %5, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @NVME_DIR_ENDIR, align 4
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %5, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %33 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nvme_submit_sync_cmd(i32 %34, %struct.nvme_command* %5, i32* null, i32 0)
  ret i32 %35
}

declare dso_local i32 @memset(%struct.nvme_command*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @nvme_submit_sync_cmd(i32, %struct.nvme_command*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
