; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_get_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_get_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_connection = type { i32, i32, i32 }

@IB_ACK_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_ib_connection*)* @rds_ib_get_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_ib_get_ack(%struct.rds_ib_connection* %0) #0 {
  %2 = alloca %struct.rds_ib_connection*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.rds_ib_connection* %0, %struct.rds_ib_connection** %2, align 8
  %5 = load i32, i32* @IB_ACK_REQUESTED, align 4
  %6 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %7 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %6, i32 0, i32 2
  %8 = call i32 @clear_bit(i32 %5, i32* %7)
  %9 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %10 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %9, i32 0, i32 0
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %14 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.rds_ib_connection*, %struct.rds_ib_connection** %2, align 8
  %17 = getelementptr inbounds %struct.rds_ib_connection, %struct.rds_ib_connection* %16, i32 0, i32 0
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
