; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_find_rmtcallxprt_by_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_find_rmtcallxprt_by_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmtcallfd_list = type { i32, i32*, %struct.rmtcallfd_list* }

@rmthead = common dso_local global %struct.rmtcallfd_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @find_rmtcallxprt_by_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_rmtcallxprt_by_fd(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rmtcallfd_list*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** @rmthead, align 8
  store %struct.rmtcallfd_list* %5, %struct.rmtcallfd_list** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %4, align 8
  %8 = icmp ne %struct.rmtcallfd_list* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %4, align 8
  %12 = getelementptr inbounds %struct.rmtcallfd_list, %struct.rmtcallfd_list* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %4, align 8
  %17 = getelementptr inbounds %struct.rmtcallfd_list, %struct.rmtcallfd_list* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %2, align 8
  br label %25

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %4, align 8
  %22 = getelementptr inbounds %struct.rmtcallfd_list, %struct.rmtcallfd_list* %21, i32 0, i32 2
  %23 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %22, align 8
  store %struct.rmtcallfd_list* %23, %struct.rmtcallfd_list** %4, align 8
  br label %6

24:                                               ; preds = %6
  store i32* null, i32** %2, align 8
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32*, i32** %2, align 8
  ret i32* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
