; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_init_stream_properties.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_quicly.c_init_stream_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, i64, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i8* }
%struct.TYPE_8__ = type { i64, i8* }

@QUICLY_SENDER_STATE_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i32)* @init_stream_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_stream_properties(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @quicly_is_client(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @quicly_stream_has_send_side(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 5
  %21 = call i32 @quicly_sendstate_init(i32* %20)
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 5
  %25 = call i32 @quicly_sendstate_init_closed(i32* %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @quicly_stream_has_receive_side(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  %36 = call i32 @quicly_recvstate_init(i32* %35)
  br label %41

37:                                               ; preds = %26
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = call i32 @quicly_recvstate_init_closed(i32* %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  %48 = load i8*, i8** @QUICLY_SENDER_STATE_NONE, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i8* %48, i8** %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load i8*, i8** @QUICLY_SENDER_STATE_NONE, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i8* %57, i8** %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @quicly_maxsender_init(i32* %68, i32 %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = call i32 @quicly_linklist_init(i32* %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = call i32 @quicly_linklist_init(i32* %79)
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  ret void
}

declare dso_local i32 @quicly_is_client(i32) #1

declare dso_local i64 @quicly_stream_has_send_side(i32, i32) #1

declare dso_local i32 @quicly_sendstate_init(i32*) #1

declare dso_local i32 @quicly_sendstate_init_closed(i32*) #1

declare dso_local i64 @quicly_stream_has_receive_side(i32, i32) #1

declare dso_local i32 @quicly_recvstate_init(i32*) #1

declare dso_local i32 @quicly_recvstate_init_closed(i32*) #1

declare dso_local i32 @quicly_maxsender_init(i32*, i32) #1

declare dso_local i32 @quicly_linklist_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
