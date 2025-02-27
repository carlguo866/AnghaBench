; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_set_membership.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_set_membership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_mreqn = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@INADDR_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Either local address or device needs to be given for multicast membership\0A\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"setsockopt(IP_ADD_MEMBERSHIP)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i32)* @set_membership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_membership(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ip_mreqn, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* @INADDR_ANY, align 4
  %16 = call i64 @htonl(i32 %15)
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 @log_error(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %41

23:                                               ; preds = %18, %4
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %11, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %11, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %11, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IPPROTO_IP, align 4
  %34 = load i32, i32* @IP_ADD_MEMBERSHIP, align 4
  %35 = call i32 @setsockopt(i32 %32, i32 %33, i32 %34, %struct.ip_mreqn* %11, i32 24)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = call i32 @log_err_errno(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %41

40:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %38, %21
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @log_error(i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.ip_mreqn*, i32) #1

declare dso_local i32 @log_err_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
