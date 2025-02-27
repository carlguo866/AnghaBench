; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c___ncp_start_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c___ncp_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncp_server = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ncp_request_reply = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncp_server*, %struct.ncp_request_reply*)* @__ncp_start_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ncp_start_request(%struct.ncp_server* %0, %struct.ncp_request_reply* %1) #0 {
  %3 = alloca %struct.ncp_server*, align 8
  %4 = alloca %struct.ncp_request_reply*, align 8
  store %struct.ncp_server* %0, %struct.ncp_server** %3, align 8
  store %struct.ncp_request_reply* %1, %struct.ncp_request_reply** %4, align 8
  %5 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %6 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %9 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %15 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memcpy(i32 %7, i32 %13, i32 %19)
  %21 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %22 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %25 = getelementptr inbounds %struct.ncp_request_reply, %struct.ncp_request_reply* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 4
  %29 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %30 = getelementptr inbounds %struct.ncp_server, %struct.ncp_server* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SOCK_STREAM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %38 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %39 = call i32 @ncptcp_start_request(%struct.ncp_server* %37, %struct.ncp_request_reply* %38)
  br label %44

40:                                               ; preds = %2
  %41 = load %struct.ncp_server*, %struct.ncp_server** %3, align 8
  %42 = load %struct.ncp_request_reply*, %struct.ncp_request_reply** %4, align 8
  %43 = call i32 @ncpdgram_start_request(%struct.ncp_server* %41, %struct.ncp_request_reply* %42)
  br label %44

44:                                               ; preds = %40, %36
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ncptcp_start_request(%struct.ncp_server*, %struct.ncp_request_reply*) #1

declare dso_local i32 @ncpdgram_start_request(%struct.ncp_server*, %struct.ncp_request_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
