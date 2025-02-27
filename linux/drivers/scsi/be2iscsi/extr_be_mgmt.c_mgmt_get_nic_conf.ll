; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_get_nic_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_get_nic_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_nic_conf_resp = type { i32 }
%struct.be_dma_mem = type { i32 }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_NTWK_GET_NIC_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_get_nic_conf(%struct.beiscsi_hba* %0, %struct.be_cmd_get_nic_conf_resp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.be_cmd_get_nic_conf_resp*, align 8
  %6 = alloca %struct.be_dma_mem, align 4
  %7 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %4, align 8
  store %struct.be_cmd_get_nic_conf_resp* %1, %struct.be_cmd_get_nic_conf_resp** %5, align 8
  %8 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %9 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %10 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_GET_NIC_CONFIG, align 4
  %11 = call i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba* %8, %struct.be_dma_mem* %6, i32 %9, i32 %10, i32 4)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %18 = load %struct.be_cmd_get_nic_conf_resp*, %struct.be_cmd_get_nic_conf_resp** %5, align 8
  %19 = call i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba* %17, %struct.be_dma_mem* %6, i32* null, %struct.be_cmd_get_nic_conf_resp* %18, i32 4)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %14
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @beiscsi_prep_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32, i32) #1

declare dso_local i32 @beiscsi_exec_nemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32*, %struct.be_cmd_get_nic_conf_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
