; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_drequest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_drequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drbd_socket }
%struct.drbd_socket = type { i32 }
%struct.p_block_req = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send_drequest(%struct.drbd_peer_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drbd_peer_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drbd_socket*, align 8
  %13 = alloca %struct.p_block_req*, align 8
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %7, align 8
  %15 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.drbd_socket* %17, %struct.drbd_socket** %12, align 8
  %18 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %7, align 8
  %19 = load %struct.drbd_socket*, %struct.drbd_socket** %12, align 8
  %20 = call %struct.p_block_req* @drbd_prepare_command(%struct.drbd_peer_device* %18, %struct.drbd_socket* %19)
  store %struct.p_block_req* %20, %struct.p_block_req** %13, align 8
  %21 = load %struct.p_block_req*, %struct.p_block_req** %13, align 8
  %22 = icmp ne %struct.p_block_req* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %42

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @cpu_to_be64(i32 %27)
  %29 = load %struct.p_block_req*, %struct.p_block_req** %13, align 8
  %30 = getelementptr inbounds %struct.p_block_req, %struct.p_block_req* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.p_block_req*, %struct.p_block_req** %13, align 8
  %33 = getelementptr inbounds %struct.p_block_req, %struct.p_block_req* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @cpu_to_be32(i32 %34)
  %36 = load %struct.p_block_req*, %struct.p_block_req** %13, align 8
  %37 = getelementptr inbounds %struct.p_block_req, %struct.p_block_req* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %7, align 8
  %39 = load %struct.drbd_socket*, %struct.drbd_socket** %12, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @drbd_send_command(%struct.drbd_peer_device* %38, %struct.drbd_socket* %39, i32 %40, i32 12, i32* null, i32 0)
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %26, %23
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.p_block_req* @drbd_prepare_command(%struct.drbd_peer_device*, %struct.drbd_socket*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @drbd_send_command(%struct.drbd_peer_device*, %struct.drbd_socket*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
