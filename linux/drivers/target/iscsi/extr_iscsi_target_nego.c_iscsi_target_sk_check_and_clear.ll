; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_sk_check_and_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_nego.c_iscsi_target_sk_check_and_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }

@LOGIN_FLAGS_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, i32)* @iscsi_target_sk_check_and_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_target_sk_check_and_clear(%struct.iscsi_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %6, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = call i32 @write_lock_bh(i32* %18)
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = call i64 @__iscsi_target_sk_check_close(%struct.sock* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %11
  %24 = load i32, i32* @LOGIN_FLAGS_CLOSED, align 4
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 0
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %23, %11
  %30 = phi i1 [ true, %11 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %37 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %36, i32 0, i32 0
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = call i32 @write_unlock_bh(i32* %41)
  br label %43

43:                                               ; preds = %39, %2
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i64 @__iscsi_target_sk_check_close(%struct.sock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
