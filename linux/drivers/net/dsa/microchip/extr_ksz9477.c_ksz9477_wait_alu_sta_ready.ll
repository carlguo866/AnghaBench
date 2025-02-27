; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_wait_alu_sta_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_wait_alu_sta_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32* }

@REG_SW_ALU_STAT_CTRL__4 = common dso_local global i32 0, align 4
@ALU_STAT_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*)* @ksz9477_wait_alu_sta_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_wait_alu_sta_ready(%struct.ksz_device* %0) #0 {
  %2 = alloca %struct.ksz_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %2, align 8
  %4 = load %struct.ksz_device*, %struct.ksz_device** %2, align 8
  %5 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @REG_SW_ALU_STAT_CTRL__4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ALU_STAT_START, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @regmap_read_poll_timeout(i32 %8, i32 %9, i32 %10, i32 %16, i32 10, i32 1000)
  ret i32 %17
}

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
