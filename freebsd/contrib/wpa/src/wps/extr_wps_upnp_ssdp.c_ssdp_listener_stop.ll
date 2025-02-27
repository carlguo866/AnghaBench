; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_ssdp_listener_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_ssdp_listener_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i32, i64 }

@EVENT_TYPE_READ = common dso_local global i32 0, align 4
@msearchreply_state_machine_handler = common dso_local global i32 0, align 4
@ELOOP_ALL_CTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssdp_listener_stop(%struct.upnp_wps_device_sm* %0) #0 {
  %2 = alloca %struct.upnp_wps_device_sm*, align 8
  store %struct.upnp_wps_device_sm* %0, %struct.upnp_wps_device_sm** %2, align 8
  %3 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %4 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %9 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EVENT_TYPE_READ, align 4
  %12 = call i32 @eloop_unregister_sock(i32 %10, i32 %11)
  %13 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %14 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %17 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %22 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @close(i32 %23)
  %25 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %26 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  br label %27

27:                                               ; preds = %20, %15
  %28 = load i32, i32* @msearchreply_state_machine_handler, align 4
  %29 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %30 = load i32, i32* @ELOOP_ALL_CTX, align 4
  %31 = call i32 @eloop_cancel_timeout(i32 %28, %struct.upnp_wps_device_sm* %29, i32 %30)
  ret void
}

declare dso_local i32 @eloop_unregister_sock(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.upnp_wps_device_sm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
