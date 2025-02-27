; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i64, i64 }

@FEC_X_CNTRL = common dso_local global i64 0, align 8
@FEC_IEVENT = common dso_local global i64 0, align 8
@FEC_ENET_GRA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"fec_stop : Graceful transmit stop did not complete !\0A\00", align 1
@FEC_ECNTRL = common dso_local global i64 0, align 8
@FEC_ENET_MII = common dso_local global i32 0, align 4
@FEC_IMASK = common dso_local global i64 0, align 8
@FEC_MII_SPEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %4)
  store %struct.fec_enet_private* %5, %struct.fec_enet_private** %3, align 8
  %6 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %7 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %12 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FEC_X_CNTRL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 1, i64 %15)
  %17 = call i32 @udelay(i32 10)
  %18 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %19 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FEC_IEVENT, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  %24 = load i32, i32* @FEC_ENET_GRA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %10
  %28 = call i32 @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %10
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %32 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FEC_ECNTRL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 1, i64 %35)
  %37 = call i32 @udelay(i32 10)
  %38 = load i32, i32* @FEC_ENET_MII, align 4
  %39 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %40 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FEC_IEVENT, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load i32, i32* @FEC_ENET_MII, align 4
  %46 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %47 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FEC_IMASK, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %53 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %56 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FEC_MII_SPEED, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
