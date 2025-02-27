; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_mcam_verify_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_npc_mcam_verify_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npc_mcam = type { i32, i64* }

@NPC_MCAM_INVALID_REQ = common dso_local global i32 0, align 4
@NPC_MCAM_PERM_DENIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.npc_mcam*, i64, i32)* @npc_mcam_verify_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npc_mcam_verify_entry(%struct.npc_mcam* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.npc_mcam*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.npc_mcam* %0, %struct.npc_mcam** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.npc_mcam*, %struct.npc_mcam** %5, align 8
  %10 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @NPC_MCAM_INVALID_REQ, align 4
  store i32 %14, i32* %4, align 4
  br label %28

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.npc_mcam*, %struct.npc_mcam** %5, align 8
  %18 = getelementptr inbounds %struct.npc_mcam, %struct.npc_mcam* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %16, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @NPC_MCAM_PERM_DENIED, align 4
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %25, %13
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
