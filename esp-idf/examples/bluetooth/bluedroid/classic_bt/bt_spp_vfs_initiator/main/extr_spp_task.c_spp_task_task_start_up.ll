; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_vfs_initiator/main/extr_spp_task.c_spp_task_task_start_up.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_spp_vfs_initiator/main/extr_spp_task.c_spp_task_task_start_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spp_task_task_queue = common dso_local global i32 0, align 4
@spp_task_task_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"SPPAppT\00", align 1
@spp_task_task_handle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spp_task_task_start_up() #0 {
  %1 = call i32 @xQueueCreate(i32 10, i32 4)
  store i32 %1, i32* @spp_task_task_queue, align 4
  %2 = load i32, i32* @spp_task_task_handler, align 4
  %3 = call i32 @xTaskCreate(i32 %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 2048, i32* null, i32 10, i32* @spp_task_task_handle)
  ret void
}

declare dso_local i32 @xQueueCreate(i32, i32) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
