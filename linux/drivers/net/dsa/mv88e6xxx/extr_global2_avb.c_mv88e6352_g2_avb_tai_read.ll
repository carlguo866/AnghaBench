; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2_avb.c_mv88e6352_g2_avb_tai_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2_avb.c_mv88e6352_g2_avb_tai_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6352_G2_AVB_CMD_PORT_TAIGLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32*, i32)* @mv88e6352_g2_avb_tai_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6352_g2_avb_tai_read(%struct.mv88e6xxx_chip* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %10 = load i32, i32* @MV88E6352_G2_AVB_CMD_PORT_TAIGLOBAL, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @mv88e6352_g2_avb_port_ptp_read(%struct.mv88e6xxx_chip* %9, i32 %10, i32 %11, i32* %12, i32 %13)
  ret i32 %14
}

declare dso_local i32 @mv88e6352_g2_avb_port_ptp_read(%struct.mv88e6xxx_chip*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
