; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_common-pci.c_ixp4xx_pci_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_common-pci.c_ixp4xx_pci_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"read_config from %d size %d dev %d:%d:%d\0A\00", align 1
@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@NP_CMD_CONFIGREAD = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@bytemask = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"read_config_byte read %#x\0A\00", align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @ixp4xx_pci_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp4xx_pci_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @PCI_SLOT(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @PCI_FUNC(i32 %25)
  %27 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i32 %24, i32 %26)
  %28 = load i32*, i32** %11, align 8
  store i32 -1, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = srem i32 %29, 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @byte_lane_enable_bits(i32 %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %37, i32* %6, align 4
  br label %67

38:                                               ; preds = %5
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ixp4xx_config_addr(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @NP_CMD_CONFIGREAD, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @ixp4xx_pci_read(i32 %43, i32 %46, i32* %15)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %50, i32* %6, align 4
  br label %67

51:                                               ; preds = %38
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %12, align 4
  %54 = mul nsw i32 8, %53
  %55 = ashr i32 %52, %54
  %56 = load i32*, i32** @bytemask, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %55, %60
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %51, %49, %36
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @byte_lane_enable_bits(i32, i32) #1

declare dso_local i32 @ixp4xx_config_addr(i32, i32, i32) #1

declare dso_local i64 @ixp4xx_pci_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
