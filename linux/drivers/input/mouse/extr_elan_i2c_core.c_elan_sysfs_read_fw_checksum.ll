; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_sysfs_read_fw_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_sysfs_read_fw_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.elan_tp_data = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @elan_sysfs_read_fw_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_sysfs_read_fw_checksum(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.elan_tp_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.i2c_client* @to_i2c_client(%struct.device* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %7, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %12 = call %struct.elan_tp_data* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.elan_tp_data* %12, %struct.elan_tp_data** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.elan_tp_data*, %struct.elan_tp_data** %8, align 8
  %15 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16)
  ret i32 %17
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.elan_tp_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
