; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip28-berr.c_check_vdma_memaddr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip28-berr.c_check_vdma_memaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cpu_err_stat = common dso_local global i32 0, align 4
@CPU_ERRMASK = common dso_local global i32 0, align 4
@sgimc = common dso_local global %struct.TYPE_2__* null, align 8
@cpu_err_addr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_vdma_memaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_vdma_memaddr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @cpu_err_stat, align 4
  %4 = load i32, i32* @CPU_ERRMASK, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %63

7:                                                ; preds = %0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %2, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 256
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = load i64, i64* @cpu_err_addr, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %1, align 4
  br label %64

21:                                               ; preds = %7
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %2, align 8
  %29 = call i64 @check_microtlb(i32 %24, i32 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %21
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %2, align 8
  %39 = call i64 @check_microtlb(i32 %34, i32 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %31
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %2, align 8
  %49 = call i64 @check_microtlb(i32 %44, i32 %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %41
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgimc, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %2, align 8
  %59 = call i64 @check_microtlb(i32 %54, i32 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51, %41, %31, %21
  store i32 1, i32* %1, align 4
  br label %64

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %0
  store i32 0, i32* %1, align 4
  br label %64

64:                                               ; preds = %63, %61, %16
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i64 @check_microtlb(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
