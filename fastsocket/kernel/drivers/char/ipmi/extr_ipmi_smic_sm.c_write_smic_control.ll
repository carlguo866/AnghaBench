; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_smic_sm.c_write_smic_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_smic_sm.c_write_smic_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i8)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.si_sm_data*, i8)* @write_smic_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_smic_control(%struct.si_sm_data* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.si_sm_data*, align 8
  %4 = alloca i8, align 1
  store %struct.si_sm_data* %0, %struct.si_sm_data** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %6 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TYPE_2__*, i32, i8)*, i32 (%struct.TYPE_2__*, i32, i8)** %8, align 8
  %10 = load %struct.si_sm_data*, %struct.si_sm_data** %3, align 8
  %11 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i8, i8* %4, align 1
  %14 = call i32 %9(%struct.TYPE_2__* %12, i32 1, i8 zeroext %13)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
