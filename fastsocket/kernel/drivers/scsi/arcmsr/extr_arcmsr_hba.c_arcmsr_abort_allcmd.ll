; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_abort_allcmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_abort_allcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AdapterControlBlock*)* @arcmsr_abort_allcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_abort_allcmd(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %5 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %16 [
    i32 130, label %7
    i32 129, label %10
    i32 128, label %13
  ]

7:                                                ; preds = %1
  %8 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %9 = call i32 @arcmsr_abort_hba_allcmd(%struct.AdapterControlBlock* %8)
  store i32 %9, i32* %3, align 4
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %12 = call i32 @arcmsr_abort_hbb_allcmd(%struct.AdapterControlBlock* %11)
  store i32 %12, i32* %3, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %15 = call i32 @arcmsr_abort_hbc_allcmd(%struct.AdapterControlBlock* %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %1, %10, %7
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @arcmsr_abort_hba_allcmd(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_abort_hbb_allcmd(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_abort_hbc_allcmd(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
