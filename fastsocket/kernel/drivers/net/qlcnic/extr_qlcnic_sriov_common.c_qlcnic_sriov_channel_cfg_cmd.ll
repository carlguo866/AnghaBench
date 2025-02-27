; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_channel_cfg_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_channel_cfg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed bc channel %s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@QLCNIC_BC_CMD_CHANNEL_INIT = common dso_local global i32 0, align 4
@QLC_BC_VF_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_channel_cfg_cmd(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_cmd_args, align 8
  %7 = alloca %struct.qlcnic_vf_info*, align 8
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %14, align 8
  %16 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %15, i64 0
  store %struct.qlcnic_vf_info* %16, %struct.qlcnic_vf_info** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args* %6, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %72

23:                                               ; preds = %2
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %25 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %24, %struct.qlcnic_cmd_args* %6)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %37)
  br label %69

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  store i32 %45, i32* %5, align 4
  %46 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 25
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  store i32 2, i32* %3, align 4
  br label %72

54:                                               ; preds = %39
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @QLCNIC_BC_CMD_CHANNEL_INIT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %60 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %7, align 8
  %61 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %60, i32 0, i32 0
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  br label %68

63:                                               ; preds = %54
  %64 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %65 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %7, align 8
  %66 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %65, i32 0, i32 0
  %67 = call i32 @clear_bit(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %58
  br label %69

69:                                               ; preds = %68, %28
  %70 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %6)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %53, %20
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
