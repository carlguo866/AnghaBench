; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_fdb_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_fdb_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndmsg = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndmsg*, %struct.nlattr**, %struct.net_device*, i8*, i32)* @port_fdb_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_fdb_del(%struct.ndmsg* %0, %struct.nlattr** %1, %struct.net_device* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ndmsg*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.ndmsg* %0, %struct.ndmsg** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i8*, i8** %10, align 8
  %13 = call i64 @is_unicast_ether_addr(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = call i32 @netdev_priv(%struct.net_device* %16)
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @ethsw_port_fdb_del_uc(i32 %17, i8* %18)
  store i32 %19, i32* %6, align 4
  br label %25

20:                                               ; preds = %5
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = call i32 @netdev_priv(%struct.net_device* %21)
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @ethsw_port_fdb_del_mc(i32 %22, i8* %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i64 @is_unicast_ether_addr(i8*) #1

declare dso_local i32 @ethsw_port_fdb_del_uc(i32, i8*) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethsw_port_fdb_del_mc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
