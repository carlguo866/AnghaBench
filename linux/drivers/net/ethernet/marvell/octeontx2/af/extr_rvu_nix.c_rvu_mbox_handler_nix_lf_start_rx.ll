; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_lf_start_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_lf_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.msg_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.msg_rsp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_lf_start_rx(%struct.rvu* %0, %struct.msg_req* %1, %struct.msg_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.msg_req*, align 8
  %7 = alloca %struct.msg_rsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.msg_req* %1, %struct.msg_req** %6, align 8
  store %struct.msg_rsp* %2, %struct.msg_rsp** %7, align 8
  %11 = load %struct.msg_req*, %struct.msg_req** %6, align 8
  %12 = getelementptr inbounds %struct.msg_req, %struct.msg_req* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.rvu*, %struct.rvu** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @nix_get_nixlf(%struct.rvu* %15, i32 %16, i32* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.rvu*, %struct.rvu** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @rvu_npc_enable_default_entries(%struct.rvu* %23, i32 %24, i32 %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %20
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @nix_get_nixlf(%struct.rvu*, i32, i32*) #1

declare dso_local i32 @rvu_npc_enable_default_entries(%struct.rvu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
