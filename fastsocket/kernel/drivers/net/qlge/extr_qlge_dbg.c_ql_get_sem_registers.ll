; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_sem_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_get_sem_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@MAX_SEMAPHORE_FUNCTIONS = common dso_local global i32 0, align 4
@MPI_NIC_REG_BLOCK = common dso_local global i32 0, align 4
@MPI_NIC_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@SEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, i32*)* @ql_get_sem_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_get_sem_registers(%struct.ql_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MAX_SEMAPHORE_FUNCTIONS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load i32, i32* @MPI_NIC_REG_BLOCK, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MPI_NIC_FUNCTION_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  %19 = load i32, i32* @SEM, align 4
  %20 = sdiv i32 %19, 4
  %21 = or i32 %18, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ql_read_mpi_reg(%struct.ql_adapter* %22, i32 %23, i32* %7)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %13
  %30 = load i32*, i32** %4, align 8
  store i32 -559038737, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %13
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %4, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %9

37:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ql_read_mpi_reg(%struct.ql_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
