; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_remove_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_remove_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @siena_remove_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siena_remove_port(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %6, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %9 = call i32 %7(%struct.efx_nic* %8)
  %10 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %10, i32* %12)
  ret void
}

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
