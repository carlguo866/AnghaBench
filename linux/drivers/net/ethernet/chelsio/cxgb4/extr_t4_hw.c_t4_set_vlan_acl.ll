; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_set_vlan_acl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_set_vlan_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.fw_acl_vlan_cmd = type { i32, i32, i32*, i8*, i8* }

@FW_ACL_VLAN_CMD_EN_F = common dso_local global i32 0, align 4
@FW_ACL_VLAN_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4
@FW_CMD_EXEC_F = common dso_local global i32 0, align 4
@FW_ACL_VLAN_CMD_DROPNOVLAN_F = common dso_local global i32 0, align 4
@FW_ACL_VLAN_CMD_FM_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_set_vlan_acl(%struct.adapter* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.fw_acl_vlan_cmd, align 8
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @FW_ACL_VLAN_CMD_EN_F, align 4
  br label %16

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  store i32 %17, i32* %10, align 4
  %18 = call i32 @memset(%struct.fw_acl_vlan_cmd* %9, i32 0, i32 32)
  %19 = load i32, i32* @FW_ACL_VLAN_CMD, align 4
  %20 = call i32 @FW_CMD_OP_V(i32 %19)
  %21 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FW_CMD_EXEC_F, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.adapter*, %struct.adapter** %5, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @FW_ACL_VLAN_CMD_PFN_V(i32 %29)
  %31 = or i32 %26, %30
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @FW_ACL_VLAN_CMD_VFN_V(i32 %32)
  %34 = or i32 %31, %33
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = getelementptr inbounds %struct.fw_acl_vlan_cmd, %struct.fw_acl_vlan_cmd* %9, i32 0, i32 4
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @FW_LEN16(%struct.fw_acl_vlan_cmd* byval(%struct.fw_acl_vlan_cmd) align 8 %9)
  %39 = or i32 %37, %38
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = getelementptr inbounds %struct.fw_acl_vlan_cmd, %struct.fw_acl_vlan_cmd* %9, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %16
  %45 = load i32, i32* @FW_ACL_VLAN_CMD_DROPNOVLAN_F, align 4
  %46 = load i32, i32* @FW_ACL_VLAN_CMD_FM_F, align 4
  %47 = or i32 %45, %46
  br label %49

48:                                               ; preds = %16
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ %47, %44 ], [ 0, %48 ]
  %51 = getelementptr inbounds %struct.fw_acl_vlan_cmd, %struct.fw_acl_vlan_cmd* %9, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.fw_acl_vlan_cmd, %struct.fw_acl_vlan_cmd* %9, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @cpu_to_be16(i64 %56)
  %58 = getelementptr inbounds %struct.fw_acl_vlan_cmd, %struct.fw_acl_vlan_cmd* %9, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.adapter*, %struct.adapter** %5, align 8
  %63 = load %struct.adapter*, %struct.adapter** %5, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @t4_wr_mbox(%struct.adapter* %62, i32 %65, %struct.fw_acl_vlan_cmd* %9, i32 32, i32* null)
  ret i32 %66
}

declare dso_local i32 @memset(%struct.fw_acl_vlan_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_ACL_VLAN_CMD_PFN_V(i32) #1

declare dso_local i32 @FW_ACL_VLAN_CMD_VFN_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_acl_vlan_cmd* byval(%struct.fw_acl_vlan_cmd) align 8) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_acl_vlan_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
