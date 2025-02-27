; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_xics_debugfs_irqmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_xics_debugfs_irqmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.kvmppc_passthru_irqmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"========\0APIRQ mappings: %d maps\0A===========\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"r_hwirq=%x, v_hwirq=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.kvmppc_passthru_irqmap*)* @xics_debugfs_irqmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xics_debugfs_irqmap(%struct.seq_file* %0, %struct.kvmppc_passthru_irqmap* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.kvmppc_passthru_irqmap*, align 8
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.kvmppc_passthru_irqmap* %1, %struct.kvmppc_passthru_irqmap** %4, align 8
  %6 = load %struct.kvmppc_passthru_irqmap*, %struct.kvmppc_passthru_irqmap** %4, align 8
  %7 = icmp ne %struct.kvmppc_passthru_irqmap* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %43

9:                                                ; preds = %2
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.kvmppc_passthru_irqmap*, %struct.kvmppc_passthru_irqmap** %4, align 8
  %12 = getelementptr inbounds %struct.kvmppc_passthru_irqmap, %struct.kvmppc_passthru_irqmap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %40, %9
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.kvmppc_passthru_irqmap*, %struct.kvmppc_passthru_irqmap** %4, align 8
  %18 = getelementptr inbounds %struct.kvmppc_passthru_irqmap, %struct.kvmppc_passthru_irqmap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %15
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load %struct.kvmppc_passthru_irqmap*, %struct.kvmppc_passthru_irqmap** %4, align 8
  %24 = getelementptr inbounds %struct.kvmppc_passthru_irqmap, %struct.kvmppc_passthru_irqmap* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.kvmppc_passthru_irqmap*, %struct.kvmppc_passthru_irqmap** %4, align 8
  %32 = getelementptr inbounds %struct.kvmppc_passthru_irqmap, %struct.kvmppc_passthru_irqmap* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %38)
  br label %40

40:                                               ; preds = %21
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %15

43:                                               ; preds = %8, %15
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
