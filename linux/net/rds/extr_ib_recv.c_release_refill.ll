; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_release_refill.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_release_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32, i32 }

@RDS_RECV_REFILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_connection*)* @release_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_refill(%struct.rds_connection* %0) #0 {
  %2 = alloca %struct.rds_connection*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %2, align 8
  %3 = load i32, i32* @RDS_RECV_REFILL, align 4
  %4 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %5 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %4, i32 0, i32 1
  %6 = call i32 @clear_bit(i32 %3, i32* %5)
  %7 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %8 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %7, i32 0, i32 0
  %9 = call i64 @waitqueue_active(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %13 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %12, i32 0, i32 0
  %14 = call i32 @wake_up_all(i32* %13)
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
