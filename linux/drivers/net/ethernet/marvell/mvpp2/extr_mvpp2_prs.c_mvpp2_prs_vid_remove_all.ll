; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vid_remove_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vid_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.mvpp2* }
%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvpp2_prs_vid_remove_all(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %5 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %6 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %5, i32 0, i32 1
  %7 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  store %struct.mvpp2* %7, %struct.mvpp2** %3, align 8
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @MVPP2_PRS_VID_PORT_FIRST(i32 %10)
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %41, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %15 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @MVPP2_PRS_VID_PORT_LAST(i32 %16)
  %18 = icmp sle i32 %13, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %12
  %20 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %21 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @mvpp2_prs_hw_inv(%struct.mvpp2* %30, i32 %31)
  %33 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %34 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %12

44:                                               ; preds = %12
  ret void
}

declare dso_local i32 @MVPP2_PRS_VID_PORT_FIRST(i32) #1

declare dso_local i32 @MVPP2_PRS_VID_PORT_LAST(i32) #1

declare dso_local i32 @mvpp2_prs_hw_inv(%struct.mvpp2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
