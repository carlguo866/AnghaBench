; ModuleID = '/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_ble_npl_mutex_init.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_ble_npl_mutex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_npl_mutex = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"ble_npl_mutex_init(%p)\0A\00", align 1
@BLE_NPL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ble_npl_mutex_init(%struct.ble_npl_mutex* %0) #0 {
  %2 = alloca %struct.ble_npl_mutex*, align 8
  store %struct.ble_npl_mutex* %0, %struct.ble_npl_mutex** %2, align 8
  %3 = load %struct.ble_npl_mutex*, %struct.ble_npl_mutex** %2, align 8
  %4 = call i32 @DEBUG_MUTEX_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.ble_npl_mutex* %3)
  %5 = load %struct.ble_npl_mutex*, %struct.ble_npl_mutex** %2, align 8
  %6 = getelementptr inbounds %struct.ble_npl_mutex, %struct.ble_npl_mutex* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @BLE_NPL_OK, align 4
  ret i32 %7
}

declare dso_local i32 @DEBUG_MUTEX_printf(i8*, %struct.ble_npl_mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
