; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_mad_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_mad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mad_recvq_size = common dso_local global i32 0, align 4
@IB_MAD_QP_MAX_SIZE = common dso_local global i32 0, align 4
@IB_MAD_QP_MIN_SIZE = common dso_local global i32 0, align 4
@mad_sendq_size = common dso_local global i32 0, align 4
@ib_mad_port_list = common dso_local global i32 0, align 4
@mad_client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Couldn't register ib_mad client\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_mad_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @mad_recvq_size, align 4
  %3 = load i32, i32* @IB_MAD_QP_MAX_SIZE, align 4
  %4 = call i32 @min(i32 %2, i32 %3)
  store i32 %4, i32* @mad_recvq_size, align 4
  %5 = load i32, i32* @mad_recvq_size, align 4
  %6 = load i32, i32* @IB_MAD_QP_MIN_SIZE, align 4
  %7 = call i32 @max(i32 %5, i32 %6)
  store i32 %7, i32* @mad_recvq_size, align 4
  %8 = load i32, i32* @mad_sendq_size, align 4
  %9 = load i32, i32* @IB_MAD_QP_MAX_SIZE, align 4
  %10 = call i32 @min(i32 %8, i32 %9)
  store i32 %10, i32* @mad_sendq_size, align 4
  %11 = load i32, i32* @mad_sendq_size, align 4
  %12 = load i32, i32* @IB_MAD_QP_MIN_SIZE, align 4
  %13 = call i32 @max(i32 %11, i32 %12)
  store i32 %13, i32* @mad_sendq_size, align 4
  %14 = call i32 @INIT_LIST_HEAD(i32* @ib_mad_port_list)
  %15 = call i64 @ib_register_client(i32* @mad_client)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %22

21:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @ib_register_client(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
