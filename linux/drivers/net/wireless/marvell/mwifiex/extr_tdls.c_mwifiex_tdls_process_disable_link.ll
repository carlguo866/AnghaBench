; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_process_disable_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_process_disable_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mwifiex_sta_node = type { i64 }
%struct.mwifiex_ds_tdls_oper = type { i32, i32 }

@TDLS_LINK_TEARDOWN = common dso_local global i32 0, align 4
@TDLS_NOT_SETUP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MWIFIEX_TDLS_DISABLE_LINK = common dso_local global i32 0, align 4
@HostCmd_CMD_TDLS_OPER = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i32*)* @mwifiex_tdls_process_disable_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_tdls_process_disable_link(%struct.mwifiex_private* %0, i32* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mwifiex_sta_node*, align 8
  %6 = alloca %struct.mwifiex_ds_tdls_oper, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 @memset(%struct.mwifiex_ds_tdls_oper* %6, i32 0, i32 8)
  %8 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %8, i32* %9)
  store %struct.mwifiex_sta_node* %10, %struct.mwifiex_sta_node** %5, align 8
  %11 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %5, align 8
  %12 = icmp ne %struct.mwifiex_sta_node* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %5, align 8
  %15 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %20 = call i32 @mwifiex_11n_cleanup_reorder_tbl(%struct.mwifiex_private* %19)
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %26 = call i32 @mwifiex_11n_delete_all_tx_ba_stream_tbl(%struct.mwifiex_private* %25)
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %28 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  br label %31

31:                                               ; preds = %18, %13
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @mwifiex_del_sta_entry(%struct.mwifiex_private* %32, i32* %33)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @TDLS_LINK_TEARDOWN, align 4
  %39 = call i32 @mwifiex_restore_tdls_packets(%struct.mwifiex_private* %36, i32* %37, i32 %38)
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @TDLS_NOT_SETUP, align 4
  %43 = call i32 @mwifiex_auto_tdls_update_peer_status(%struct.mwifiex_private* %40, i32* %41, i32 %42)
  %44 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, %struct.mwifiex_ds_tdls_oper* %6, i32 0, i32 1
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @memcpy(i32* %44, i32* %45, i32 %46)
  %48 = load i32, i32* @MWIFIEX_TDLS_DISABLE_LINK, align 4
  %49 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, %struct.mwifiex_ds_tdls_oper* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %51 = load i32, i32* @HostCmd_CMD_TDLS_OPER, align 4
  %52 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %53 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %50, i32 %51, i32 %52, i32 0, %struct.mwifiex_ds_tdls_oper* %6, i32 1)
  ret i32 %53
}

declare dso_local i32 @memset(%struct.mwifiex_ds_tdls_oper*, i32, i32) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @mwifiex_11n_cleanup_reorder_tbl(%struct.mwifiex_private*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mwifiex_11n_delete_all_tx_ba_stream_tbl(%struct.mwifiex_private*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mwifiex_del_sta_entry(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @mwifiex_restore_tdls_packets(%struct.mwifiex_private*, i32*, i32) #1

declare dso_local i32 @mwifiex_auto_tdls_update_peer_status(%struct.mwifiex_private*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_ds_tdls_oper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
