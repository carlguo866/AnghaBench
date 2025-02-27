; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_eq_ofld_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_mb.c_csio_mb_eq_ofld_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32 }
%struct.csio_mb = type { i64 }
%struct.csio_eq_params = type { i32, i32 }
%struct.fw_eq_ofld_cmd = type { i8*, i8* }

@FW_EQ_OFLD_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_EXEC_F = common dso_local global i32 0, align 4
@FW_EQ_OFLD_CMD_ALLOC_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csio_hw*, %struct.csio_mb*, i8*, i32, %struct.csio_eq_params*, void (%struct.csio_hw*, %struct.csio_mb*)*)* @csio_mb_eq_ofld_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_mb_eq_ofld_alloc(%struct.csio_hw* %0, %struct.csio_mb* %1, i8* %2, i32 %3, %struct.csio_eq_params* %4, void (%struct.csio_hw*, %struct.csio_mb*)* %5) #0 {
  %7 = alloca %struct.csio_hw*, align 8
  %8 = alloca %struct.csio_mb*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.csio_eq_params*, align 8
  %12 = alloca void (%struct.csio_hw*, %struct.csio_mb*)*, align 8
  %13 = alloca %struct.fw_eq_ofld_cmd*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %7, align 8
  store %struct.csio_mb* %1, %struct.csio_mb** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.csio_eq_params* %4, %struct.csio_eq_params** %11, align 8
  store void (%struct.csio_hw*, %struct.csio_mb*)* %5, void (%struct.csio_hw*, %struct.csio_mb*)** %12, align 8
  %14 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %15 = getelementptr inbounds %struct.csio_mb, %struct.csio_mb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.fw_eq_ofld_cmd*
  store %struct.fw_eq_ofld_cmd* %17, %struct.fw_eq_ofld_cmd** %13, align 8
  %18 = load %struct.csio_mb*, %struct.csio_mb** %8, align 8
  %19 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %13, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load void (%struct.csio_hw*, %struct.csio_mb*)*, void (%struct.csio_hw*, %struct.csio_mb*)** %12, align 8
  %23 = call i32 @CSIO_INIT_MBP(%struct.csio_mb* %18, %struct.fw_eq_ofld_cmd* %19, i32 %20, i8* %21, void (%struct.csio_hw*, %struct.csio_mb*)* %22, i32 1)
  %24 = load i32, i32* @FW_EQ_OFLD_CMD, align 4
  %25 = call i32 @FW_CMD_OP_V(i32 %24)
  %26 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FW_CMD_EXEC_F, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.csio_eq_params*, %struct.csio_eq_params** %11, align 8
  %31 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @FW_EQ_OFLD_CMD_PFN_V(i32 %32)
  %34 = or i32 %29, %33
  %35 = load %struct.csio_eq_params*, %struct.csio_eq_params** %11, align 8
  %36 = getelementptr inbounds %struct.csio_eq_params, %struct.csio_eq_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @FW_EQ_OFLD_CMD_VFN_V(i32 %37)
  %39 = or i32 %34, %38
  %40 = call i8* @htonl(i32 %39)
  %41 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %13, align 8
  %42 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @FW_EQ_OFLD_CMD_ALLOC_F, align 4
  %44 = call i32 @FW_CMD_LEN16_V(i32 1)
  %45 = or i32 %43, %44
  %46 = call i8* @htonl(i32 %45)
  %47 = load %struct.fw_eq_ofld_cmd*, %struct.fw_eq_ofld_cmd** %13, align 8
  %48 = getelementptr inbounds %struct.fw_eq_ofld_cmd, %struct.fw_eq_ofld_cmd* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  ret void
}

declare dso_local i32 @CSIO_INIT_MBP(%struct.csio_mb*, %struct.fw_eq_ofld_cmd*, i32, i8*, void (%struct.csio_hw*, %struct.csio_mb*)*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_PFN_V(i32) #1

declare dso_local i32 @FW_EQ_OFLD_CMD_VFN_V(i32) #1

declare dso_local i32 @FW_CMD_LEN16_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
