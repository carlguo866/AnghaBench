; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_init_port.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8216_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32)* @ar8216_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8216_init_port(%struct.ar8xxx_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %8 = call i32 @ar8xxx_has_gige(%struct.ar8xxx_priv* %7)
  %9 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %10 = call i32 @chip_is_ar8316(%struct.ar8xxx_priv* %9)
  %11 = call i32 @__ar8216_init_port(%struct.ar8xxx_priv* %5, i32 %6, i32 %8, i32 %10)
  ret void
}

declare dso_local i32 @__ar8216_init_port(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @ar8xxx_has_gige(%struct.ar8xxx_priv*) #1

declare dso_local i32 @chip_is_ar8316(%struct.ar8xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
