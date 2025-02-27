; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_new_token_frame.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_new_token_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i64)* }
%struct.st_quicly_handle_payload_state_t = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }

@NEW_TOKEN_RECEIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.st_quicly_handle_payload_state_t*)* @handle_new_token_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_new_token_frame(%struct.TYPE_14__* %0, %struct.st_quicly_handle_payload_state_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.st_quicly_handle_payload_state_t*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.st_quicly_handle_payload_state_t* %1, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %8 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %9 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %8, i32 0, i32 1
  %10 = load %struct.st_quicly_handle_payload_state_t*, %struct.st_quicly_handle_payload_state_t** %5, align 8
  %11 = getelementptr inbounds %struct.st_quicly_handle_payload_state_t, %struct.st_quicly_handle_payload_state_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @quicly_decode_new_token_frame(i32* %9, i32 %12, %struct.TYPE_13__* %6)
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load i32, i32* @NEW_TOKEN_RECEIVE, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = call i32 (...) @probe_now()
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @QUICLY_PROBE(i32 %18, %struct.TYPE_14__* %19, i32 %20, i32 %23, i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = icmp eq %struct.TYPE_15__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %56

36:                                               ; preds = %17
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i64)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i64)** %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %53 = bitcast %struct.TYPE_16__* %52 to i64*
  %54 = load i64, i64* %53, align 4
  %55 = call i32 %44(%struct.TYPE_15__* %50, %struct.TYPE_14__* %51, i64 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %36, %35, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @quicly_decode_new_token_frame(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @QUICLY_PROBE(i32, %struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @probe_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
