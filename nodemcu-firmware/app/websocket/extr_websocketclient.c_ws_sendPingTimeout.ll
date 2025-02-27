; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_ws_sendPingTimeout.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/websocket/extr_websocketclient.c_ws_sendPingTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.espconn = type { i64 }
%struct.TYPE_2__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"ws_sendPingTimeout \0A\00", align 1
@WS_UNHEALTHY_THRESHOLD = common dso_local global i64 0, align 8
@WS_OPCODE_PING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ws_sendPingTimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ws_sendPingTimeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.espconn*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 @NODE_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.espconn*
  store %struct.espconn* %7, %struct.espconn** %3, align 8
  %8 = load %struct.espconn*, %struct.espconn** %3, align 8
  %9 = getelementptr inbounds %struct.espconn, %struct.espconn* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %4, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WS_UNHEALTHY_THRESHOLD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 -19, i32* %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.espconn*, %struct.espconn** %3, align 8
  %26 = call i32 @espconn_secure_disconnect(%struct.espconn* %25)
  br label %30

27:                                               ; preds = %17
  %28 = load %struct.espconn*, %struct.espconn** %3, align 8
  %29 = call i32 @espconn_disconnect(%struct.espconn* %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %39

31:                                               ; preds = %1
  %32 = load %struct.espconn*, %struct.espconn** %3, align 8
  %33 = load i32, i32* @WS_OPCODE_PING, align 4
  %34 = call i32 @ws_sendFrame(%struct.espconn* %32, i32 %33, i32* null, i32 0)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i32 @espconn_secure_disconnect(%struct.espconn*) #1

declare dso_local i32 @espconn_disconnect(%struct.espconn*) #1

declare dso_local i32 @ws_sendFrame(%struct.espconn*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
