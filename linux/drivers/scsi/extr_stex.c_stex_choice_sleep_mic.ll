; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_choice_sleep_mic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_choice_sleep_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_hba = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ST_S3 = common dso_local global i32 0, align 4
@ST_S4 = common dso_local global i32 0, align 4
@ST_NOTHANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_hba*, i32)* @stex_choice_sleep_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stex_choice_sleep_mic(%struct.st_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca %struct.st_hba*, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store %struct.st_hba* %0, %struct.st_hba** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 128, label %9
    i32 129, label %11
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @ST_S3, align 4
  store i32 %10, i32* %3, align 4
  br label %17

11:                                               ; preds = %2
  %12 = load %struct.st_hba*, %struct.st_hba** %5, align 8
  %13 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @ST_S4, align 4
  store i32 %14, i32* %3, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ST_NOTHANDLED, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %11, %9
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
