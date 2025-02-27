; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_phy_write16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_phy_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.ksz_device* }
%struct.ksz_device = type { i32, i32 }

@GBIT_SUPPORT = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i32, i32)* @ksz9477_phy_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_phy_write16(%struct.dsa_switch* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ksz_device*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i32 0, i32 0
  %13 = load %struct.ksz_device*, %struct.ksz_device** %12, align 8
  store %struct.ksz_device* %13, %struct.ksz_device** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ksz_device*, %struct.ksz_device** %10, align 8
  %16 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %40

20:                                               ; preds = %4
  %21 = load %struct.ksz_device*, %struct.ksz_device** %10, align 8
  %22 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GBIT_SUPPORT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MII_CTRL1000, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %40

32:                                               ; preds = %27, %20
  %33 = load %struct.ksz_device*, %struct.ksz_device** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 1
  %37 = add nsw i32 256, %36
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @ksz_pwrite16(%struct.ksz_device* %33, i32 %34, i32 %37, i32 %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %32, %31, %19
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @ksz_pwrite16(%struct.ksz_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
