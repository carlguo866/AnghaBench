; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_BusLogic.h_BusLogic_ReadDataInRegister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_BusLogic.h_BusLogic_ReadDataInRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BusLogic_HostAdapter = type { i64 }

@BusLogic_DataInRegisterOffset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.BusLogic_HostAdapter*)* @BusLogic_ReadDataInRegister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @BusLogic_ReadDataInRegister(%struct.BusLogic_HostAdapter* %0) #0 {
  %2 = alloca %struct.BusLogic_HostAdapter*, align 8
  store %struct.BusLogic_HostAdapter* %0, %struct.BusLogic_HostAdapter** %2, align 8
  %3 = load %struct.BusLogic_HostAdapter*, %struct.BusLogic_HostAdapter** %2, align 8
  %4 = getelementptr inbounds %struct.BusLogic_HostAdapter, %struct.BusLogic_HostAdapter* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BusLogic_DataInRegisterOffset, align 8
  %7 = add nsw i64 %5, %6
  %8 = call zeroext i8 @inb(i64 %7)
  ret i8 %8
}

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
