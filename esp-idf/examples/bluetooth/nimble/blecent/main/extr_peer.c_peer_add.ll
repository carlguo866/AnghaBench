; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_add.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_peer.c_peer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peer = type { i32 }

@BLE_HS_EALREADY = common dso_local global i32 0, align 4
@peer_pool = common dso_local global i32 0, align 4
@BLE_HS_ENOMEM = common dso_local global i32 0, align 4
@peers = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peer_add(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.peer*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.peer* @peer_find(i32 %5)
  store %struct.peer* %6, %struct.peer** %4, align 8
  %7 = load %struct.peer*, %struct.peer** %4, align 8
  %8 = icmp ne %struct.peer* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @BLE_HS_EALREADY, align 4
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = call %struct.peer* @os_memblock_get(i32* @peer_pool)
  store %struct.peer* %12, %struct.peer** %4, align 8
  %13 = load %struct.peer*, %struct.peer** %4, align 8
  %14 = icmp eq %struct.peer* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @BLE_HS_ENOMEM, align 4
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %11
  %18 = load %struct.peer*, %struct.peer** %4, align 8
  %19 = call i32 @memset(%struct.peer* %18, i32 0, i32 4)
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.peer*, %struct.peer** %4, align 8
  %22 = getelementptr inbounds %struct.peer, %struct.peer* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.peer*, %struct.peer** %4, align 8
  %24 = load i32, i32* @next, align 4
  %25 = call i32 @SLIST_INSERT_HEAD(i32* @peers, %struct.peer* %23, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %15, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.peer* @peer_find(i32) #1

declare dso_local %struct.peer* @os_memblock_get(i32*) #1

declare dso_local i32 @memset(%struct.peer*, i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.peer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
