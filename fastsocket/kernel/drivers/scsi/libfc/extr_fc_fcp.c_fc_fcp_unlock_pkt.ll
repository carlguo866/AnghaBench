; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_unlock_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_unlock_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_fcp_pkt*)* @fc_fcp_unlock_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %0) #0 {
  %2 = alloca %struct.fc_fcp_pkt*, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %2, align 8
  %3 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %4 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %3, i32 0, i32 0
  %5 = call i32 @spin_unlock_bh(i32* %4)
  %6 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %7 = call i32 @fc_fcp_pkt_release(%struct.fc_fcp_pkt* %6)
  ret void
}

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_fcp_pkt_release(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
