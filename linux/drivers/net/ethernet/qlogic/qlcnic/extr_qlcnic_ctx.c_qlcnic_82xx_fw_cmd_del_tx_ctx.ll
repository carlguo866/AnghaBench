; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_fw_cmd_del_tx_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_fw_cmd_del_tx_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_host_tx_ring = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@QLCNIC_CMD_DESTROY_TX_CTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to destroy tx ctx in firmware\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_82xx_fw_cmd_del_tx_ctx(%struct.qlcnic_adapter* %0, %struct.qlcnic_host_tx_ring* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %5 = alloca %struct.qlcnic_cmd_args, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlcnic_host_tx_ring* %1, %struct.qlcnic_host_tx_ring** %4, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = load i32, i32* @QLCNIC_CMD_DESTROY_TX_CTX, align 4
  %9 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %5, %struct.qlcnic_adapter* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %16, i32* %20, align 4
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %22 = call i64 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %21, %struct.qlcnic_cmd_args* %5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %24, %13
  %31 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %5)
  br label %32

32:                                               ; preds = %30, %12
  ret void
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
