; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_get_sli4_intf_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_get_sli4_intf_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MGMT_MODE_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sli4_intf_reg\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@SLI4_INTF_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*)* @get_sli4_intf_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sli4_intf_reg(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* @MGMT_MODE_RD, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @SLI4_INTF_REG, align 4
  %11 = call i32 @ocs_config_read32(i32* %9, i32 %10)
  %12 = call i32 @ocs_mgmt_emit_int(i32* %7, i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  ret void
}

declare dso_local i32 @ocs_mgmt_emit_int(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @ocs_config_read32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
