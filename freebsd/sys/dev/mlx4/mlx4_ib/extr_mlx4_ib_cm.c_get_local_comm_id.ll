; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cm.c_get_local_comm_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cm.c_get_local_comm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cm_sidr_generic_msg = type { i32 }
%struct.cm_generic_msg = type { i32 }

@CM_SIDR_REQ_ATTR_ID = common dso_local global i64 0, align 8
@CM_SIDR_REP_ATTR_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"trying to set local_comm_id in SIDR_REP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad*)* @get_local_comm_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_local_comm_id(%struct.ib_mad* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mad*, align 8
  %4 = alloca %struct.cm_sidr_generic_msg*, align 8
  %5 = alloca %struct.cm_generic_msg*, align 8
  store %struct.ib_mad* %0, %struct.ib_mad** %3, align 8
  %6 = load %struct.ib_mad*, %struct.ib_mad** %3, align 8
  %7 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CM_SIDR_REQ_ATTR_ID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.ib_mad*, %struct.ib_mad** %3, align 8
  %14 = bitcast %struct.ib_mad* %13 to %struct.cm_sidr_generic_msg*
  store %struct.cm_sidr_generic_msg* %14, %struct.cm_sidr_generic_msg** %4, align 8
  %15 = load %struct.cm_sidr_generic_msg*, %struct.cm_sidr_generic_msg** %4, align 8
  %16 = getelementptr inbounds %struct.cm_sidr_generic_msg, %struct.cm_sidr_generic_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.ib_mad*, %struct.ib_mad** %3, align 8
  %21 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CM_SIDR_REP_ATTR_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %35

28:                                               ; preds = %19
  %29 = load %struct.ib_mad*, %struct.ib_mad** %3, align 8
  %30 = bitcast %struct.ib_mad* %29 to %struct.cm_generic_msg*
  store %struct.cm_generic_msg* %30, %struct.cm_generic_msg** %5, align 8
  %31 = load %struct.cm_generic_msg*, %struct.cm_generic_msg** %5, align 8
  %32 = getelementptr inbounds %struct.cm_generic_msg, %struct.cm_generic_msg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be32_to_cpu(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %26, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
