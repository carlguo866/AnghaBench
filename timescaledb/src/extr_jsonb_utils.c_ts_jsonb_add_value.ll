; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_jsonb_utils.c_ts_jsonb_add_value.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_jsonb_utils.c_ts_jsonb_add_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }

@jbvString = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ts_jsonb_add_value(i32* %0, i8* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %30

15:                                               ; preds = %3
  %16 = load i32, i32* @jbvString, align 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = call i32 @ts_jsonb_add_pair(i32* %27, %struct.TYPE_9__* %7, %struct.TYPE_9__* %28)
  br label %30

30:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ts_jsonb_add_pair(i32*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
