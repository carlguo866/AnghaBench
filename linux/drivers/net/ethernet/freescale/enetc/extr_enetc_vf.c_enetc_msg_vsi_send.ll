; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_vf.c_enetc_msg_vsi_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_vf.c_enetc_msg_vsi_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.enetc_msg_swbd = type { i32 }

@ENETC_VSIMSGSR = common dso_local global i32 0, align 4
@ENETC_VSIMSGSR_MB = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENETC_VSIMSGSR_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"VSI command execute error: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_si*, %struct.enetc_msg_swbd*)* @enetc_msg_vsi_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_msg_vsi_send(%struct.enetc_si* %0, %struct.enetc_msg_swbd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.enetc_si*, align 8
  %5 = alloca %struct.enetc_msg_swbd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.enetc_si* %0, %struct.enetc_si** %4, align 8
  store %struct.enetc_msg_swbd* %1, %struct.enetc_msg_swbd** %5, align 8
  store i32 100, i32* %6, align 4
  %8 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %9 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %8, i32 0, i32 1
  %10 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %5, align 8
  %11 = call i32 @enetc_msg_vsi_write_msg(i32* %9, %struct.enetc_msg_swbd* %10)
  br label %12

12:                                               ; preds = %24, %2
  %13 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %14 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %13, i32 0, i32 1
  %15 = load i32, i32* @ENETC_VSIMSGSR, align 4
  %16 = call i32 @enetc_rd(i32* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ENETC_VSIMSGSR_MB, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %28

22:                                               ; preds = %12
  %23 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %12, label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ENETC_VSIMSGSR_MS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.enetc_si*, %struct.enetc_si** %4, align 8
  %41 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ENETC_SIMSGSR_GET_MC(i32 %44)
  %46 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %39, %31
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @enetc_msg_vsi_write_msg(i32*, %struct.enetc_msg_swbd*) #1

declare dso_local i32 @enetc_rd(i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ENETC_SIMSGSR_GET_MC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
