; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_els_prli.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_els_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport_priv = type { i32 }
%struct.fc_els_spp = type { i32 }

@FC_SPP_RESP_INVL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_rport_priv*, i32, %struct.fc_els_spp*, %struct.fc_els_spp*)* @fc_lport_els_prli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_lport_els_prli(%struct.fc_rport_priv* %0, i32 %1, %struct.fc_els_spp* %2, %struct.fc_els_spp* %3) #0 {
  %5 = alloca %struct.fc_rport_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_els_spp*, align 8
  %8 = alloca %struct.fc_els_spp*, align 8
  store %struct.fc_rport_priv* %0, %struct.fc_rport_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fc_els_spp* %2, %struct.fc_els_spp** %7, align 8
  store %struct.fc_els_spp* %3, %struct.fc_els_spp** %8, align 8
  %9 = load i32, i32* @FC_SPP_RESP_INVL, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
