; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_c62x/extr_adf_c62x_hw_data.c_get_etr_bar_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_c62x/extr_adf_c62x_hw_data.c_get_etr_bar_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_hw_device_data = type { i32 }

@ADF_C62X_ETR_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf_hw_device_data*)* @get_etr_bar_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_etr_bar_id(%struct.adf_hw_device_data* %0) #0 {
  %2 = alloca %struct.adf_hw_device_data*, align 8
  store %struct.adf_hw_device_data* %0, %struct.adf_hw_device_data** %2, align 8
  %3 = load i32, i32* @ADF_C62X_ETR_BAR, align 4
  ret i32 %3
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
