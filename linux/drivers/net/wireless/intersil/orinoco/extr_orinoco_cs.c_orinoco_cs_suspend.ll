; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_cs.c_orinoco_cs_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco_cs.c_orinoco_cs_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.orinoco_private* }
%struct.orinoco_private = type { %struct.orinoco_pccard* }
%struct.orinoco_pccard = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @orinoco_cs_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_cs_suspend(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.orinoco_private*, align 8
  %4 = alloca %struct.orinoco_pccard*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 0
  %7 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  store %struct.orinoco_private* %7, %struct.orinoco_private** %3, align 8
  %8 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %9 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %8, i32 0, i32 0
  %10 = load %struct.orinoco_pccard*, %struct.orinoco_pccard** %9, align 8
  store %struct.orinoco_pccard* %10, %struct.orinoco_pccard** %4, align 8
  %11 = load %struct.orinoco_pccard*, %struct.orinoco_pccard** %4, align 8
  %12 = getelementptr inbounds %struct.orinoco_pccard, %struct.orinoco_pccard* %11, i32 0, i32 0
  %13 = call i32 @test_bit(i32 0, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %17 = call i32 @orinoco_down(%struct.orinoco_private* %16)
  br label %18

18:                                               ; preds = %15, %1
  ret i32 0
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @orinoco_down(%struct.orinoco_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
