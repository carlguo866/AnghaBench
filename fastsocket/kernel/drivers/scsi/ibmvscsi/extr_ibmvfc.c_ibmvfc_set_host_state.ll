; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_set_host_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_set_host_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_host = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvfc_host*, i32)* @ibmvfc_set_host_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_set_host_state(%struct.ibmvfc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.ibmvfc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ibmvfc_host* %0, %struct.ibmvfc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %7 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %12 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %3, align 8
  %15 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
