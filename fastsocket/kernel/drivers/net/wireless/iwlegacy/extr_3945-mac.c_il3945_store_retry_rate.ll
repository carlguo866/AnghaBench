; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_store_retry_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_store_retry_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.il_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @il3945_store_retry_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @il3945_store_retry_rate(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.il_priv*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.il_priv* @dev_get_drvdata(%struct.device* %10)
  store %struct.il_priv* %11, %struct.il_priv** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @simple_strtoul(i8* %12, i32* null, i32 0)
  %14 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %4
  %24 = load i64, i64* %8, align 8
  ret i64 %24
}

declare dso_local %struct.il_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
