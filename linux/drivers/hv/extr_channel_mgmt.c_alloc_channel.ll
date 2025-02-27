; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_alloc_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_alloc_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@vmbus_on_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmbus_channel* ()* @alloc_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmbus_channel* @alloc_channel() #0 {
  %1 = alloca %struct.vmbus_channel*, align 8
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.vmbus_channel* @kzalloc(i32 20, i32 %3)
  store %struct.vmbus_channel* %4, %struct.vmbus_channel** %2, align 8
  %5 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %6 = icmp ne %struct.vmbus_channel* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.vmbus_channel* null, %struct.vmbus_channel** %1, align 8
  br label %30

8:                                                ; preds = %0
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %10 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %9, i32 0, i32 4
  %11 = call i32 @spin_lock_init(i32* %10)
  %12 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %13 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %12, i32 0, i32 3
  %14 = call i32 @init_completion(i32* %13)
  %15 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %16 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %15, i32 0, i32 2
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %19 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %18, i32 0, i32 1
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %22 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %21, i32 0, i32 0
  %23 = load i32, i32* @vmbus_on_event, align 4
  %24 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %25 = ptrtoint %struct.vmbus_channel* %24 to i64
  %26 = call i32 @tasklet_init(i32* %22, i32 %23, i64 %25)
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %28 = call i32 @hv_ringbuffer_pre_init(%struct.vmbus_channel* %27)
  %29 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  store %struct.vmbus_channel* %29, %struct.vmbus_channel** %1, align 8
  br label %30

30:                                               ; preds = %8, %7
  %31 = load %struct.vmbus_channel*, %struct.vmbus_channel** %1, align 8
  ret %struct.vmbus_channel* %31
}

declare dso_local %struct.vmbus_channel* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @hv_ringbuffer_pre_init(%struct.vmbus_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
