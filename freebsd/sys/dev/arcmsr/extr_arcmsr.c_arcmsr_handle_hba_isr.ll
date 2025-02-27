; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_handle_hba_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_handle_hba_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32 }

@HBA_MessageUnit = common dso_local global i32 0, align 4
@outbound_intstatus = common dso_local global i32 0, align 4
@ARCMSR_MU_OUTBOUND_DOORBELL_INT = common dso_local global i32 0, align 4
@ARCMSR_MU_OUTBOUND_POSTQUEUE_INT = common dso_local global i32 0, align 4
@ARCMSR_MU_OUTBOUND_MESSAGE0_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_handle_hba_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_handle_hba_isr(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %4 = load i32, i32* @HBA_MessageUnit, align 4
  %5 = load i32, i32* @outbound_intstatus, align 4
  %6 = call i32 @CHIP_REG_READ32(i32 %4, i32 0, i32 %5)
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  %15 = load i32, i32* @HBA_MessageUnit, align 4
  %16 = load i32, i32* @outbound_intstatus, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @CHIP_REG_WRITE32(i32 %15, i32 0, i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ARCMSR_MU_OUTBOUND_DOORBELL_INT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %25 = call i32 @arcmsr_hba_doorbell_isr(%struct.AdapterControlBlock* %24)
  br label %26

26:                                               ; preds = %23, %14
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @ARCMSR_MU_OUTBOUND_POSTQUEUE_INT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %33 = call i32 @arcmsr_hba_postqueue_isr(%struct.AdapterControlBlock* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @ARCMSR_MU_OUTBOUND_MESSAGE0_INT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %41 = call i32 @arcmsr_hba_message_isr(%struct.AdapterControlBlock* %40)
  br label %42

42:                                               ; preds = %13, %39, %34
  ret void
}

declare dso_local i32 @CHIP_REG_READ32(i32, i32, i32) #1

declare dso_local i32 @CHIP_REG_WRITE32(i32, i32, i32, i32) #1

declare dso_local i32 @arcmsr_hba_doorbell_isr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_hba_postqueue_isr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_hba_message_isr(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
