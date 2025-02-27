; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_verify_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_verify_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i64, i32, %struct.TYPE_2__*, i32 (%struct.ipath_devdata*)* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"No interrupts detected, not usable.\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%u interrupts at timer check\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @verify_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_interrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ipath_devdata*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.ipath_devdata*
  store %struct.ipath_devdata* %5, %struct.ipath_devdata** %3, align 8
  %6 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %7 = icmp ne %struct.ipath_devdata* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %43

9:                                                ; preds = %1
  %10 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %11 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %15, i32 0, i32 3
  %17 = load i32 (%struct.ipath_devdata*)*, i32 (%struct.ipath_devdata*)** %16, align 8
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %19 = call i32 %17(%struct.ipath_devdata* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %36

27:                                               ; preds = %14
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %28, i32 0, i32 1
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i32, i32* @HZ, align 4
  %32 = sdiv i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = call i32 @mod_timer(i32* %29, i64 %34)
  br label %36

36:                                               ; preds = %27, %21
  br label %43

37:                                               ; preds = %9
  %38 = load i32, i32* @VERBOSE, align 4
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %40 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ipath_cdbg(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %8, %37, %36
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
