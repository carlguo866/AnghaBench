; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl2.c_atl2_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl2.c_atl2_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.atl2_adapter = type { %struct.atl2_hw }
%struct.atl2_hw = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @atl2_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.atl2_adapter*, align 8
  %9 = alloca %struct.atl2_hw*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.atl2_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.atl2_adapter* %16, %struct.atl2_adapter** %8, align 8
  %17 = load %struct.atl2_adapter*, %struct.atl2_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %17, i32 0, i32 0
  store %struct.atl2_hw* %18, %struct.atl2_hw** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %20 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %112

26:                                               ; preds = %3
  %27 = load %struct.atl2_hw*, %struct.atl2_hw** %9, align 8
  %28 = call i64 @atl2_check_eeprom_exist(%struct.atl2_hw* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %112

33:                                               ; preds = %26
  %34 = load %struct.atl2_hw*, %struct.atl2_hw** %9, align 8
  %35 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.atl2_hw*, %struct.atl2_hw** %9, align 8
  %38 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 16
  %41 = or i32 %36, %40
  %42 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %43 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %45 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 2
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %52 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = sub nsw i32 %54, 1
  %56 = ashr i32 %55, 2
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %57, %58
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32* @kmalloc(i32 %63, i32 %64)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %33
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %112

71:                                               ; preds = %33
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %93, %71
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %73
  %78 = load %struct.atl2_hw*, %struct.atl2_hw** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = mul nsw i32 %79, 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = call i32 @atl2_read_eeprom(%struct.atl2_hw* %78, i32 %80, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %112

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %73

96:                                               ; preds = %73
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %100 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 3
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %98, i64 %103
  %105 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %106 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @memcpy(i32* %97, i32* %104, i32 %107)
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @kfree(i32* %109)
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %96, %89, %68, %30, %23
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.atl2_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @atl2_check_eeprom_exist(%struct.atl2_hw*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @atl2_read_eeprom(%struct.atl2_hw*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
