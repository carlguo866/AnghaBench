; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_64.c_sun4u_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_64.c_sun4u_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_handler_data = type { i64, i64 }

@IMAP_TID_UPA = common dso_local global i64 0, align 8
@IMAP_TID_JBUS = common dso_local global i64 0, align 8
@IMAP_AID_SAFARI = common dso_local global i64 0, align 8
@IMAP_NID_SAFARI = common dso_local global i64 0, align 8
@IMAP_VALID = common dso_local global i32 0, align 4
@ICLR_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @sun4u_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4u_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.irq_handler_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.irq_handler_data* @irq_data_get_irq_handler_data(%struct.irq_data* %8)
  store %struct.irq_handler_data* %9, %struct.irq_handler_data** %3, align 8
  %10 = load %struct.irq_handler_data*, %struct.irq_handler_data** %3, align 8
  %11 = call i64 @likely(%struct.irq_handler_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %1
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %18 = call i32 @irq_data_get_affinity_mask(%struct.irq_data* %17)
  %19 = call i64 @irq_choose_cpu(i32 %16, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load %struct.irq_handler_data*, %struct.irq_handler_data** %3, align 8
  %21 = getelementptr inbounds %struct.irq_handler_data, %struct.irq_handler_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @sun4u_compute_tid(i64 %23, i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @upa_readq(i64 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* @IMAP_TID_UPA, align 8
  %29 = load i64, i64* @IMAP_TID_JBUS, align 8
  %30 = or i64 %28, %29
  %31 = load i64, i64* @IMAP_AID_SAFARI, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @IMAP_NID_SAFARI, align 8
  %34 = or i64 %32, %33
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %6, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IMAP_VALID, align 4
  %40 = or i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @upa_writeq(i64 %44, i64 %45)
  %47 = load i64, i64* @ICLR_IDLE, align 8
  %48 = load %struct.irq_handler_data*, %struct.irq_handler_data** %3, align 8
  %49 = getelementptr inbounds %struct.irq_handler_data, %struct.irq_handler_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @upa_writeq(i64 %47, i64 %50)
  br label %52

52:                                               ; preds = %13, %1
  ret void
}

declare dso_local %struct.irq_handler_data* @irq_data_get_irq_handler_data(%struct.irq_data*) #1

declare dso_local i64 @likely(%struct.irq_handler_data*) #1

declare dso_local i64 @irq_choose_cpu(i32, i32) #1

declare dso_local i32 @irq_data_get_affinity_mask(%struct.irq_data*) #1

declare dso_local i32 @sun4u_compute_tid(i64, i64) #1

declare dso_local i64 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
