; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_cleanup_and_insert_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_cleanup_and_insert_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ctrl_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, %struct.cmd_ctrl_node*)* @lbs_cleanup_and_insert_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_cleanup_and_insert_cmd(%struct.lbs_private* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  %5 = alloca i64, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  %6 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %7 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %11 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %12 = call i32 @__lbs_cleanup_and_insert_cmd(%struct.lbs_private* %10, %struct.cmd_ctrl_node* %11)
  %13 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__lbs_cleanup_and_insert_cmd(%struct.lbs_private*, %struct.cmd_ctrl_node*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
