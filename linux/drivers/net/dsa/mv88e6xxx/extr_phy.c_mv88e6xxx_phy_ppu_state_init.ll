; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_phy.c_mv88e6xxx_phy_ppu_state_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_phy.c_mv88e6xxx_phy_ppu_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, i32, i32 }

@mv88e6xxx_phy_ppu_reenable_work = common dso_local global i32 0, align 4
@mv88e6xxx_phy_ppu_reenable_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv88e6xxx_chip*)* @mv88e6xxx_phy_ppu_state_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e6xxx_phy_ppu_state_init(%struct.mv88e6xxx_chip* %0) #0 {
  %2 = alloca %struct.mv88e6xxx_chip*, align 8
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %2, align 8
  %3 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %4 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %3, i32 0, i32 2
  %5 = call i32 @mutex_init(i32* %4)
  %6 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %7 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %6, i32 0, i32 1
  %8 = load i32, i32* @mv88e6xxx_phy_ppu_reenable_work, align 4
  %9 = call i32 @INIT_WORK(i32* %7, i32 %8)
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %11 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %10, i32 0, i32 0
  %12 = load i32, i32* @mv88e6xxx_phy_ppu_reenable_timer, align 4
  %13 = call i32 @timer_setup(i32* %11, i32 %12, i32 0)
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
