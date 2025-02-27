; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpCloseContextByServerForExpired.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpServer.c_httpCloseContextByServerForExpired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"context:%p, fd:%d, ip:%s, read http body error, time expired, timer:%p\00", align 1
@HTTP_PARSE_BODY_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpCloseContextByServerForExpired(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = call i32 @httpRemoveContextFromEpoll(i32 %10, %struct.TYPE_6__* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @httpError(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %13, i32 %16, i32 %19, i8* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = load i32, i32* @HTTP_PARSE_BODY_ERROR, align 4
  %24 = call i32 @httpSendErrorResp(%struct.TYPE_6__* %22, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = call i32 @httpCloseContextByServer(i32 %27, %struct.TYPE_6__* %28)
  ret void
}

declare dso_local i32 @httpRemoveContextFromEpoll(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @httpError(i8*, %struct.TYPE_6__*, i32, i32, i8*) #1

declare dso_local i32 @httpSendErrorResp(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @httpCloseContextByServer(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
