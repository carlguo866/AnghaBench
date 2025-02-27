; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_unregister_sas_ha.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_init.c_asd_unregister_sas_ha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_unregister_sas_ha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_unregister_sas_ha(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %4 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %5 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %4, i32 0, i32 0
  %6 = call i32 @sas_unregister_ha(%struct.TYPE_4__* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %8 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sas_remove_host(i32 %11)
  %13 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %14 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @scsi_remove_host(i32 %17)
  %19 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %20 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @scsi_host_put(i32 %23)
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %26 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  %30 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %31 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kfree(i32 %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @sas_unregister_ha(%struct.TYPE_4__*) #1

declare dso_local i32 @sas_remove_host(i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @scsi_host_put(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
