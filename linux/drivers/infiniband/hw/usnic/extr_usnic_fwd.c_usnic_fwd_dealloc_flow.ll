; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_fwd.c_usnic_fwd_dealloc_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_fwd.c_usnic_fwd_dealloc_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_fwd_flow = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CMD_DEL_FILTER = common dso_local global i32 0, align 4
@ERR_EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Filter %u already deleted for VF Idx %u pf: %s status: %d\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"PF %s VF Idx %u Filter: %u FILTER DELETE failed with status %d\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"PF %s VF Idx %u Filter: %u FILTER DELETED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_fwd_dealloc_flow(%struct.usnic_fwd_flow* %0) #0 {
  %2 = alloca %struct.usnic_fwd_flow*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usnic_fwd_flow* %0, %struct.usnic_fwd_flow** %2, align 8
  %6 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %7 = getelementptr inbounds %struct.usnic_fwd_flow, %struct.usnic_fwd_flow* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %10 = getelementptr inbounds %struct.usnic_fwd_flow, %struct.usnic_fwd_flow* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %13 = getelementptr inbounds %struct.usnic_fwd_flow, %struct.usnic_fwd_flow* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CMD_DEL_FILTER, align 4
  %16 = call i32 @usnic_fwd_devcmd(%struct.TYPE_2__* %11, i32 %14, i32 %15, i32* %4, i32* %5)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ERR_EINVAL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %25 = getelementptr inbounds %struct.usnic_fwd_flow, %struct.usnic_fwd_flow* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %28 = getelementptr inbounds %struct.usnic_fwd_flow, %struct.usnic_fwd_flow* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %31 = getelementptr inbounds %struct.usnic_fwd_flow, %struct.usnic_fwd_flow* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (i8*, i32, i32, i32, ...) @usnic_dbg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %34, i32 %35)
  br label %51

37:                                               ; preds = %19
  %38 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %39 = getelementptr inbounds %struct.usnic_fwd_flow, %struct.usnic_fwd_flow* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %44 = getelementptr inbounds %struct.usnic_fwd_flow, %struct.usnic_fwd_flow* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %47 = getelementptr inbounds %struct.usnic_fwd_flow, %struct.usnic_fwd_flow* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @usnic_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %37, %23
  store i32 0, i32* %3, align 4
  br label %65

52:                                               ; preds = %1
  %53 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %54 = getelementptr inbounds %struct.usnic_fwd_flow, %struct.usnic_fwd_flow* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %59 = getelementptr inbounds %struct.usnic_fwd_flow, %struct.usnic_fwd_flow* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %62 = getelementptr inbounds %struct.usnic_fwd_flow, %struct.usnic_fwd_flow* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, i32, i32, i32, ...) @usnic_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %52, %51
  %66 = load %struct.usnic_fwd_flow*, %struct.usnic_fwd_flow** %2, align 8
  %67 = call i32 @kfree(%struct.usnic_fwd_flow* %66)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @usnic_fwd_devcmd(%struct.TYPE_2__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @usnic_dbg(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @usnic_err(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.usnic_fwd_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
