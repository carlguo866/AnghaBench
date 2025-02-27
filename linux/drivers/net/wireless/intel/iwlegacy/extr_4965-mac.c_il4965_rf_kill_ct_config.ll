; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_rf_kill_ct_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_rf_kill_ct_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.il_ct_kill_config = type { i32 }

@CSR_UCODE_DRV_GP1_CLR = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT = common dso_local global i32 0, align 4
@C_CT_KILL_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"C_CT_KILL_CONFIG failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"C_CT_KILL_CONFIG succeeded, critical temperature is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il4965_rf_kill_ct_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_rf_kill_ct_config(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca %struct.il_ct_kill_config, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 1
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %11 = load i32, i32* @CSR_UCODE_DRV_GP1_CLR, align 4
  %12 = load i32, i32* @CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT, align 4
  %13 = call i32 @_il_wr(%struct.il_priv* %10, i32 %11, i32 %12)
  %14 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.il_ct_kill_config, %struct.il_ct_kill_config* %3, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %25 = load i32, i32* @C_CT_KILL_CONFIG, align 4
  %26 = call i32 @il_send_cmd_pdu(%struct.il_priv* %24, i32 %25, i32 4, %struct.il_ct_kill_config* %3)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = call i32 @IL_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @D_INFO(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %29
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @il_send_cmd_pdu(%struct.il_priv*, i32, i32, %struct.il_ct_kill_config*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @D_INFO(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
