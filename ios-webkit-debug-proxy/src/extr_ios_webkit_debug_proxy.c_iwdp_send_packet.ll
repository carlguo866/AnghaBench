; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_send_packet.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy.c_iwdp_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i8*, i64)*, i64 (%struct.TYPE_10__*, i32, i8*, i64)* }

@.str = private unnamed_addr constant [38 x i8] c"Unable to send %zd bytes to inspector\00", align 1
@WI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdp_send_packet(%struct.TYPE_9__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %8, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64 (%struct.TYPE_10__*, i32, i8*, i64)*, i64 (%struct.TYPE_10__*, i32, i8*, i64)** %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 %21(%struct.TYPE_10__* %22, i32 %25, i8* %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_10__*, i8*, i64)*, i32 (%struct.TYPE_10__*, i8*, i64)** %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 %33(%struct.TYPE_10__* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @WI_SUCCESS, align 4
  br label %39

39:                                               ; preds = %37, %30
  %40 = phi i32 [ %36, %30 ], [ %38, %37 ]
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
