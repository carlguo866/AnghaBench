; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_if_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_if_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_vf_cfg = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_iface_list = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.be_cmd_resp_get_iface_list = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_IFACE_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_get_if_id(%struct.be_adapter* %0, %struct.be_vf_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_vf_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_cmd_req_get_iface_list*, align 8
  %9 = alloca %struct.be_cmd_resp_get_iface_list*, align 8
  %10 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_vf_cfg* %1, %struct.be_vf_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %15 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %14)
  store %struct.be_mcc_wrb* %15, %struct.be_mcc_wrb** %7, align 8
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %17 = icmp ne %struct.be_mcc_wrb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %23 = call %struct.be_cmd_req_get_iface_list* @embedded_payload(%struct.be_mcc_wrb* %22)
  store %struct.be_cmd_req_get_iface_list* %23, %struct.be_cmd_req_get_iface_list** %8, align 8
  %24 = load %struct.be_cmd_req_get_iface_list*, %struct.be_cmd_req_get_iface_list** %8, align 8
  %25 = getelementptr inbounds %struct.be_cmd_req_get_iface_list, %struct.be_cmd_req_get_iface_list* %24, i32 0, i32 0
  %26 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %27 = load i32, i32* @OPCODE_COMMON_GET_IFACE_LIST, align 4
  %28 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %29 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_4__* %25, i32 %26, i32 %27, i32 4, %struct.be_mcc_wrb* %28, i32* null)
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = load %struct.be_cmd_req_get_iface_list*, %struct.be_cmd_req_get_iface_list** %8, align 8
  %33 = getelementptr inbounds %struct.be_cmd_req_get_iface_list, %struct.be_cmd_req_get_iface_list* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %36 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %21
  %40 = load %struct.be_cmd_req_get_iface_list*, %struct.be_cmd_req_get_iface_list** %8, align 8
  %41 = bitcast %struct.be_cmd_req_get_iface_list* %40 to %struct.be_cmd_resp_get_iface_list*
  store %struct.be_cmd_resp_get_iface_list* %41, %struct.be_cmd_resp_get_iface_list** %9, align 8
  %42 = load %struct.be_cmd_resp_get_iface_list*, %struct.be_cmd_resp_get_iface_list** %9, align 8
  %43 = getelementptr inbounds %struct.be_cmd_resp_get_iface_list, %struct.be_cmd_resp_get_iface_list* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %5, align 8
  %48 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %39, %21
  br label %50

50:                                               ; preds = %49, %18
  %51 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_get_iface_list* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_4__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
