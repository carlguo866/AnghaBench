; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_nmclan_cs.c_nmclan_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_nmclan_cs.c_nmclan_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"nmclan_detach(0x%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @nmclan_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmclan_detach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 1
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %8 = call i32 @DEBUG(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.pcmcia_device* %7)
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %10 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @unregister_netdev(%struct.net_device* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %18 = call i32 @nmclan_release(%struct.pcmcia_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @free_netdev(%struct.net_device* %19)
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*, %struct.pcmcia_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @nmclan_release(%struct.pcmcia_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
