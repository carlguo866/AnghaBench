; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_disconnectx.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_disconnectx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@SAE_ASSOCID_ANY = common dso_local global i64 0, align 8
@SAE_ASSOCID_ALL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SAE_CONNID_ANY = common dso_local global i64 0, align 8
@SAE_CONNID_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i64, i64)* @mptcp_usr_disconnectx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_usr_disconnectx(%struct.socket* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @SAE_ASSOCID_ANY, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @SAE_ASSOCID_ALL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %30

17:                                               ; preds = %11, %3
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @SAE_CONNID_ANY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @SAE_CONNID_ALL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %30

27:                                               ; preds = %21, %17
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = call i32 @mptcp_usr_disconnect(%struct.socket* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %25, %15
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @mptcp_usr_disconnect(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
