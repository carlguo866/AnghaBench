; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_set_age_time.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_set_age_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8216_ATU_CTRL_AGE_TIME = common dso_local global i32 0, align 4
@AR8216_ATU_CTRL_AGE_TIME_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32)* @ar8xxx_set_age_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8xxx_set_age_time(%struct.ar8xxx_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ar8xxx_age_time_val(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AR8216_ATU_CTRL_AGE_TIME, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @AR8216_ATU_CTRL_AGE_TIME_S, align 4
  %15 = shl i32 %13, %14
  %16 = call i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %10, i32 %11, i32 %12, i32 %15)
  ret void
}

declare dso_local i32 @ar8xxx_age_time_val(i32) #1

declare dso_local i32 @ar8xxx_rmw(%struct.ar8xxx_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
