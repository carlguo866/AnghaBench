; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_charger_set_inductive_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_charger_set_inductive_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_charger_ddata = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpcap_charger_ddata*, i32)* @cpcap_charger_set_inductive_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpcap_charger_set_inductive_path(%struct.cpcap_charger_ddata* %0, i32 %1) #0 {
  %3 = alloca %struct.cpcap_charger_ddata*, align 8
  %4 = alloca i32, align 4
  store %struct.cpcap_charger_ddata* %0, %struct.cpcap_charger_ddata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %3, align 8
  %6 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %3, align 8
  %14 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @gpiod_set_value(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
