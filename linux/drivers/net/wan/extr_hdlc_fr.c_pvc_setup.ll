; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_pvc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_pvc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32 }

@ARPHRD_DLCI = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @pvc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvc_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load i32, i32* @ARPHRD_DLCI, align 4
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @IFF_POINTOPOINT, align 4
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  store i32 10, i32* %10, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  store i32 2, i32* %12, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netif_keep_dst(%struct.net_device* %13)
  ret void
}

declare dso_local i32 @netif_keep_dst(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
