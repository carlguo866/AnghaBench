; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_reg.h_asd_enable_ints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_reg.h_asd_enable_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@COMSTATEN = common dso_local global i32 0, align 4
@EN_CSBUFPERR = common dso_local global i32 0, align 4
@EN_CSERR = common dso_local global i32 0, align 4
@EN_OVLYERR = common dso_local global i32 0, align 4
@DCHSTATUS = common dso_local global i32 0, align 4
@EN_CFIFTOERR = common dso_local global i32 0, align 4
@CHIMINTEN = common dso_local global i32 0, align 4
@SET_CHIMINTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_enable_ints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_enable_ints(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %3 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %4 = load i32, i32* @COMSTATEN, align 4
  %5 = load i32, i32* @EN_CSBUFPERR, align 4
  %6 = load i32, i32* @EN_CSERR, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @EN_OVLYERR, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %3, i32 %4, i32 %9)
  %11 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %12 = load i32, i32* @DCHSTATUS, align 4
  %13 = load i32, i32* @EN_CFIFTOERR, align 4
  %14 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %11, i32 %12, i32 %13)
  %15 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %16 = load i32, i32* @CHIMINTEN, align 4
  %17 = load i32, i32* @SET_CHIMINTEN, align 4
  %18 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
