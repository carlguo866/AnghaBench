; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_nfcee_discover_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_nfcee_discover_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.nci_nfcee_discover_cmd = type { i64 }

@NCI_OP_NFCEE_DISCOVER_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nci_dev*, i64)* @nci_nfcee_discover_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nci_nfcee_discover_req(%struct.nci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nci_nfcee_discover_cmd, align 8
  %6 = alloca i64, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = getelementptr inbounds %struct.nci_nfcee_discover_cmd, %struct.nci_nfcee_discover_cmd* %5, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %11 = load i32, i32* @NCI_OP_NFCEE_DISCOVER_CMD, align 4
  %12 = call i32 @nci_send_cmd(%struct.nci_dev* %10, i32 %11, i32 1, %struct.nci_nfcee_discover_cmd* %5)
  ret void
}

declare dso_local i32 @nci_send_cmd(%struct.nci_dev*, i32, i32, %struct.nci_nfcee_discover_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
