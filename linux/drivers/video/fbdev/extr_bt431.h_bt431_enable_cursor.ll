; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_bt431.h_bt431_enable_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_bt431.h_bt431_enable_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt431_regs = type { i32 }

@BT431_REG_CMD = common dso_local global i32 0, align 4
@BT431_CMD_CURS_ENABLE = common dso_local global i32 0, align 4
@BT431_CMD_OR_CURSORS = common dso_local global i32 0, align 4
@BT431_CMD_4_1_MUX = common dso_local global i32 0, align 4
@BT431_CMD_THICK_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt431_regs*)* @bt431_enable_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt431_enable_cursor(%struct.bt431_regs* %0) #0 {
  %2 = alloca %struct.bt431_regs*, align 8
  store %struct.bt431_regs* %0, %struct.bt431_regs** %2, align 8
  %3 = load %struct.bt431_regs*, %struct.bt431_regs** %2, align 8
  %4 = load i32, i32* @BT431_REG_CMD, align 4
  %5 = load i32, i32* @BT431_CMD_CURS_ENABLE, align 4
  %6 = load i32, i32* @BT431_CMD_OR_CURSORS, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @BT431_CMD_4_1_MUX, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @BT431_CMD_THICK_1, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @bt431_write_reg(%struct.bt431_regs* %3, i32 %4, i32 %11)
  ret void
}

declare dso_local i32 @bt431_write_reg(%struct.bt431_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
