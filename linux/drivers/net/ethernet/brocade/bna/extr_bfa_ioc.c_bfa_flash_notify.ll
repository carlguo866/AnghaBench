; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_flash_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_flash_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_flash = type { i32, i32, i32, i32 (i32, i32)* }

@BFA_STATUS_IOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bfa_flash_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_flash_notify(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_flash*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bfa_flash*
  store %struct.bfa_flash* %7, %struct.bfa_flash** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %31 [
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = load i32, i32* @BFA_STATUS_IOC_FAILURE, align 4
  %16 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %18, i32 0, i32 3
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %25 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %20(i32 %23, i32 %26)
  %28 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %29 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %14, %9
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
