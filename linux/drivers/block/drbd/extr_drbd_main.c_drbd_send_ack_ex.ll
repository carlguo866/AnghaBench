; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_ack_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_send_ack_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_send_ack_ex(%struct.drbd_peer_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drbd_peer_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @cpu_to_be64(i32 %13)
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @cpu_to_be32(i32 %15)
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @cpu_to_be64(i32 %17)
  %19 = call i32 @_drbd_send_ack(%struct.drbd_peer_device* %11, i32 %12, i32 %14, i32 %16, i32 %18)
  ret i32 %19
}

declare dso_local i32 @_drbd_send_ack(%struct.drbd_peer_device*, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
