; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_send_crq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_send_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_host = type { i32 }
%struct.vio_dev = type { i32 }

@H_SEND_CRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_host*, i32, i32)* @ibmvfc_send_crq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_send_crq(%struct.ibmvfc_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vio_dev*, align 8
  store %struct.ibmvfc_host* %0, %struct.ibmvfc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %9 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.vio_dev* @to_vio_dev(i32 %10)
  store %struct.vio_dev* %11, %struct.vio_dev** %7, align 8
  %12 = load i32, i32* @H_SEND_CRQ, align 4
  %13 = load %struct.vio_dev*, %struct.vio_dev** %7, align 8
  %14 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @plpar_hcall_norets(i32 %12, i32 %15, i32 %16, i32 %17)
  ret i32 %18
}

declare dso_local %struct.vio_dev* @to_vio_dev(i32) #1

declare dso_local i32 @plpar_hcall_norets(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
