; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_port_mmd_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_port_mmd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }

@REG_PORT_PHY_MMD_SETUP = common dso_local global i32 0, align 4
@PORT_MMD_OP_INDEX = common dso_local global i32 0, align 4
@REG_PORT_PHY_MMD_INDEX_DATA = common dso_local global i32 0, align 4
@PORT_MMD_OP_DATA_NO_INCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32, i32, i32, i32)* @ksz9477_port_mmd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9477_port_mmd_write(%struct.ksz_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ksz_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.ksz_device*, %struct.ksz_device** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @REG_PORT_PHY_MMD_SETUP, align 4
  %14 = load i32, i32* @PORT_MMD_OP_INDEX, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @MMD_SETUP(i32 %14, i32 %15)
  %17 = call i32 @ksz_pwrite16(%struct.ksz_device* %11, i32 %12, i32 %13, i32 %16)
  %18 = load %struct.ksz_device*, %struct.ksz_device** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @REG_PORT_PHY_MMD_INDEX_DATA, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ksz_pwrite16(%struct.ksz_device* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.ksz_device*, %struct.ksz_device** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @REG_PORT_PHY_MMD_SETUP, align 4
  %26 = load i32, i32* @PORT_MMD_OP_DATA_NO_INCR, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @MMD_SETUP(i32 %26, i32 %27)
  %29 = call i32 @ksz_pwrite16(%struct.ksz_device* %23, i32 %24, i32 %25, i32 %28)
  %30 = load %struct.ksz_device*, %struct.ksz_device** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @REG_PORT_PHY_MMD_INDEX_DATA, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @ksz_pwrite16(%struct.ksz_device* %30, i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @ksz_pwrite16(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @MMD_SETUP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
