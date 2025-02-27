; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcmgenet_priv*)* @bcmgenet_mii_bus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_mii_bus_init(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %3, align 8
  %5 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %6 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %15 = call i32 @bcmgenet_mii_of_init(%struct.bcmgenet_priv* %14)
  store i32 %15, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %18 = call i32 @bcmgenet_mii_pd_init(%struct.bcmgenet_priv* %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @bcmgenet_mii_of_init(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_mii_pd_init(%struct.bcmgenet_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
