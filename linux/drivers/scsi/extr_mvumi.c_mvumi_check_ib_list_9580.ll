; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_check_ib_list_9580.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_check_ib_list_9580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvumi_hba*)* @mvumi_check_ib_list_9580 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvumi_check_ib_list_9580(%struct.mvumi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  %5 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %6 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %5, i32 0, i32 2
  %7 = call i32 @atomic_read(i32* %6)
  %8 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %9 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp sge i32 %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %16 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ioread32(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 65535
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %21, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ioread32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
