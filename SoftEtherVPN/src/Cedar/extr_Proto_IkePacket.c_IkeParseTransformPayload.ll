; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeParseTransformPayload.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeParseTransformPayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IkeParseTransformPayload(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %32

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @ReadBuf(i32* %14, %struct.TYPE_5__* %6, i32 8)
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %32

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @IkeParseTransformValueList(i32* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %19, %18, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @ReadBuf(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @IkeParseTransformValueList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
