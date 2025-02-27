; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_sock_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_sock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@SOCK_LINGER = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @sco_sock_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_sock_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %8, %struct.sock** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %9, %struct.sock* %10)
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i32 @sco_sock_close(%struct.sock* %16)
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = load i32, i32* @SOCK_LINGER, align 4
  %20 = call i64 @sock_flag(%struct.sock* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call i32 @lock_sock(%struct.sock* %28)
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = load i32, i32* @BT_CLOSED, align 4
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @bt_sock_wait_state(%struct.sock* %30, i32 %31, i64 %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = call i32 @release_sock(%struct.sock* %36)
  br label %38

38:                                               ; preds = %27, %22, %15
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = call i32 @sock_orphan(%struct.sock* %39)
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = call i32 @sco_sock_kill(%struct.sock* %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %38, %14
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*, %struct.sock*) #1

declare dso_local i32 @sco_sock_close(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @bt_sock_wait_state(%struct.sock*, i32, i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @sco_sock_kill(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
