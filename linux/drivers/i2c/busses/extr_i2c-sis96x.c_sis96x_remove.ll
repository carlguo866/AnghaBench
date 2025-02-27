; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis96x.c_sis96x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis96x.c_sis96x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@sis96x_smbus_base = common dso_local global i64 0, align 8
@sis96x_adapter = common dso_local global i32 0, align 4
@SMB_IOSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @sis96x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis96x_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load i64, i64* @sis96x_smbus_base, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = call i32 @i2c_del_adapter(i32* @sis96x_adapter)
  %7 = load i64, i64* @sis96x_smbus_base, align 8
  %8 = load i32, i32* @SMB_IOSIZE, align 4
  %9 = call i32 @release_region(i64 %7, i32 %8)
  store i64 0, i64* @sis96x_smbus_base, align 8
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @release_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
