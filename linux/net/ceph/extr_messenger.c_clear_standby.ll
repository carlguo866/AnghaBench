; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_clear_standby.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_clear_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i64, i32 }

@CON_STATE_STANDBY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"clear_standby %p and ++connect_seq\0A\00", align 1
@CON_STATE_PREOPEN = common dso_local global i64 0, align 8
@CON_FLAG_WRITE_PENDING = common dso_local global i32 0, align 4
@CON_FLAG_KEEPALIVE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_connection*)* @clear_standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_standby(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %3 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %4 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CON_STATE_STANDBY, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %10 = call i32 @dout(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %9)
  %11 = load i64, i64* @CON_STATE_PREOPEN, align 8
  %12 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %15 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %19 = load i32, i32* @CON_FLAG_WRITE_PENDING, align 4
  %20 = call i32 @con_flag_test(%struct.ceph_connection* %18, i32 %19)
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %23 = load i32, i32* @CON_FLAG_KEEPALIVE_PENDING, align 4
  %24 = call i32 @con_flag_test(%struct.ceph_connection* %22, i32 %23)
  %25 = call i32 @WARN_ON(i32 %24)
  br label %26

26:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_connection*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @con_flag_test(%struct.ceph_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
