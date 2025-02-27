; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_wifi.c_task_push_wifi_scan.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_wifi.c_task_push_wifi_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32 }

@TASK_TYPE_BLOCKING = common dso_local global i32 0, align 4
@task_wifi_scan_handler = common dso_local global i32 0, align 4
@MSG_SCANNING_WIRELESS_NETWORKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_push_wifi_scan(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.TYPE_4__* (...) @task_init()
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load i32, i32* @TASK_TYPE_BLOCKING, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @task_wifi_scan_handler, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MSG_SCANNING_WIRELESS_NETWORKS, align 4
  %22 = call i32 @msg_hash_to_str(i32 %21)
  %23 = call i32 @strdup(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = call i32 @task_queue_push(%struct.TYPE_4__* %26)
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %9, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.TYPE_4__* @task_init(...) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @task_queue_push(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
