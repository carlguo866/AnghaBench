; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_get_ant_det_val_from_bt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_get_ant_det_val_from_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BT_OP_GET_BT_ANT_DET_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @halbtc_get_ant_det_val_from_bt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halbtc_get_ant_det_val_from_bt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.btc_coexist*, align 8
  %4 = alloca [4 x i32], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.btc_coexist*
  store %struct.btc_coexist* %6, %struct.btc_coexist** %3, align 8
  %7 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 16, i1 false)
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %9 = load i32, i32* @BT_OP_GET_BT_ANT_DET_VAL, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %11 = call i32 @halbtc_send_bt_mp_operation(%struct.btc_coexist* %8, i32 %9, i32* %10, i32 4, i32 200)
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %3, align 8
  %13 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  ret i32 %15
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @halbtc_send_bt_mp_operation(%struct.btc_coexist*, i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
