; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_on_config_websocket.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_on_config_websocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.proxy_configurator_t = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"OFF,ON\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32*)* @on_config_websocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_websocket(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.proxy_configurator_t*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.proxy_configurator_t*
  store %struct.proxy_configurator_t* %14, %struct.proxy_configurator_t** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @h2o_configurator_get_one_of(%struct.TYPE_10__* %15, i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %29

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.proxy_configurator_t*, %struct.proxy_configurator_t** %8, align 8
  %24 = getelementptr inbounds %struct.proxy_configurator_t, %struct.proxy_configurator_t* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %22, i32* %28, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %21, %20
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @h2o_configurator_get_one_of(%struct.TYPE_10__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
