; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_64.c_sun4u_set_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_64.c_sun4u_set_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.cpumask = type { i32 }
%struct.irq_handler_data = type { i64, i64 }

@IMAP_TID_UPA = common dso_local global i64 0, align 8
@IMAP_TID_JBUS = common dso_local global i64 0, align 8
@IMAP_AID_SAFARI = common dso_local global i64 0, align 8
@IMAP_NID_SAFARI = common dso_local global i64 0, align 8
@IMAP_VALID = common dso_local global i32 0, align 4
@ICLR_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*, i32)* @sun4u_set_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4u_set_affinity(%struct.irq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_handler_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call %struct.irq_handler_data* @irq_data_get_irq_handler_data(%struct.irq_data* %12)
  store %struct.irq_handler_data* %13, %struct.irq_handler_data** %7, align 8
  %14 = load %struct.irq_handler_data*, %struct.irq_handler_data** %7, align 8
  %15 = call i64 @likely(%struct.irq_handler_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %3
  %18 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %22 = call i64 @irq_choose_cpu(i32 %20, %struct.cpumask* %21)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.irq_handler_data*, %struct.irq_handler_data** %7, align 8
  %24 = getelementptr inbounds %struct.irq_handler_data, %struct.irq_handler_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @sun4u_compute_tid(i64 %26, i64 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @upa_readq(i64 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* @IMAP_TID_UPA, align 8
  %32 = load i64, i64* @IMAP_TID_JBUS, align 8
  %33 = or i64 %31, %32
  %34 = load i64, i64* @IMAP_AID_SAFARI, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* @IMAP_NID_SAFARI, align 8
  %37 = or i64 %35, %36
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %10, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @IMAP_VALID, align 4
  %43 = or i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* %10, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @upa_writeq(i64 %47, i64 %48)
  %50 = load i64, i64* @ICLR_IDLE, align 8
  %51 = load %struct.irq_handler_data*, %struct.irq_handler_data** %7, align 8
  %52 = getelementptr inbounds %struct.irq_handler_data, %struct.irq_handler_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @upa_writeq(i64 %50, i64 %53)
  br label %55

55:                                               ; preds = %17, %3
  ret i32 0
}

declare dso_local %struct.irq_handler_data* @irq_data_get_irq_handler_data(%struct.irq_data*) #1

declare dso_local i64 @likely(%struct.irq_handler_data*) #1

declare dso_local i64 @irq_choose_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @sun4u_compute_tid(i64, i64) #1

declare dso_local i64 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
