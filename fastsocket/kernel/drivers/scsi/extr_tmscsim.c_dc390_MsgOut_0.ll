; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_MsgOut_0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_MsgOut_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc390_acb = type { i32 }
%struct.dc390_srb = type { i32 }

@SRB_UNEXPECT_RESEL = common dso_local global i32 0, align 4
@SRB_ABORT_SENT = common dso_local global i32 0, align 4
@SCSI_NOP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc390_acb*, %struct.dc390_srb*, i32*)* @dc390_MsgOut_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc390_MsgOut_0(%struct.dc390_acb* %0, %struct.dc390_srb* %1, i32* %2) #0 {
  %4 = alloca %struct.dc390_acb*, align 8
  %5 = alloca %struct.dc390_srb*, align 8
  %6 = alloca i32*, align 8
  store %struct.dc390_acb* %0, %struct.dc390_acb** %4, align 8
  store %struct.dc390_srb* %1, %struct.dc390_srb** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.dc390_srb*, %struct.dc390_srb** %5, align 8
  %8 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SRB_UNEXPECT_RESEL, align 4
  %11 = load i32, i32* @SRB_ABORT_SENT, align 4
  %12 = add nsw i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @SCSI_NOP0, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
