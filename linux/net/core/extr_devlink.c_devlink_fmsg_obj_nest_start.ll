; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_fmsg_obj_nest_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_fmsg_obj_nest_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_fmsg = type { i32 }

@DEVLINK_ATTR_FMSG_OBJ_NEST_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_fmsg_obj_nest_start(%struct.devlink_fmsg* %0) #0 {
  %2 = alloca %struct.devlink_fmsg*, align 8
  store %struct.devlink_fmsg* %0, %struct.devlink_fmsg** %2, align 8
  %3 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %2, align 8
  %4 = load i32, i32* @DEVLINK_ATTR_FMSG_OBJ_NEST_START, align 4
  %5 = call i32 @devlink_fmsg_nest_common(%struct.devlink_fmsg* %3, i32 %4)
  ret i32 %5
}

declare dso_local i32 @devlink_fmsg_nest_common(%struct.devlink_fmsg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
