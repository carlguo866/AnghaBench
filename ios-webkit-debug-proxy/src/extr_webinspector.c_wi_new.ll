; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_webinspector.c_wi_new.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_webinspector.c_wi_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@wi_on_recv = common dso_local global i32 0, align 4
@wi_send_plist = common dso_local global i32 0, align 4
@wi_recv_packet = common dso_local global i32 0, align 4
@wi_on_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @wi_new(i32 %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 @malloc(i32 4)
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32 @memset(%struct.TYPE_6__* %12, i32 0, i32 4)
  %14 = load i32, i32* @wi_on_recv, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @wi_send_plist, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @wi_recv_packet, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @wi_on_error, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = call %struct.TYPE_7__* (...) @wi_private_new()
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %11
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = call i32 @wi_free(%struct.TYPE_6__* %34)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %43

36:                                               ; preds = %11
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %2, align 8
  br label %43

43:                                               ; preds = %36, %33, %10
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %44
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @wi_private_new(...) #1

declare dso_local i32 @wi_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
