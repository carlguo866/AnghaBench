; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c___lbtf_cleanup_and_insert_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_cmd.c___lbtf_cleanup_and_insert_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32 }
%struct.cmd_ctrl_node = type { i32, i32, i64, i32* }

@LBTF_DEB_HOST = common dso_local global i32 0, align 4
@LBS_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbtf_private*, %struct.cmd_ctrl_node*)* @__lbtf_cleanup_and_insert_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lbtf_cleanup_and_insert_cmd(%struct.lbtf_private* %0, %struct.cmd_ctrl_node* %1) #0 {
  %3 = alloca %struct.lbtf_private*, align 8
  %4 = alloca %struct.cmd_ctrl_node*, align 8
  store %struct.lbtf_private* %0, %struct.lbtf_private** %3, align 8
  store %struct.cmd_ctrl_node* %1, %struct.cmd_ctrl_node** %4, align 8
  %5 = load i32, i32* @LBTF_DEB_HOST, align 4
  %6 = call i32 @lbtf_deb_enter(i32 %5)
  %7 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %8 = icmp ne %struct.cmd_ctrl_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %25

10:                                               ; preds = %2
  %11 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %12 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %11, i32 0, i32 3
  store i32* null, i32** %12, align 8
  %13 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %14 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %16 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LBS_CMD_BUFFER_SIZE, align 4
  %19 = call i32 @memset(i32 %17, i32 0, i32 %18)
  %20 = load %struct.cmd_ctrl_node*, %struct.cmd_ctrl_node** %4, align 8
  %21 = getelementptr inbounds %struct.cmd_ctrl_node, %struct.cmd_ctrl_node* %20, i32 0, i32 0
  %22 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %23 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %22, i32 0, i32 0
  %24 = call i32 @list_add_tail(i32* %21, i32* %23)
  br label %25

25:                                               ; preds = %10, %9
  %26 = load i32, i32* @LBTF_DEB_HOST, align 4
  %27 = call i32 @lbtf_deb_leave(i32 %26)
  ret void
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
