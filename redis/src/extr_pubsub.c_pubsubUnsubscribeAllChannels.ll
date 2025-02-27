; ModuleID = '/home/carl/AnghaBench/redis/src/extr_pubsub.c_pubsubUnsubscribeAllChannels.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_pubsub.c_pubsubUnsubscribeAllChannels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pubsubUnsubscribeAllChannels(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @dictGetSafeIterator(i32 %11)
  store i32* %12, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %17, %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @dictNext(i32* %14)
  store i32* %15, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @dictGetKey(i32* %18)
  store i32* %19, i32** %8, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @pubsubUnsubscribeChannel(%struct.TYPE_5__* %20, i32* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = call i32 @addReplyPubsubUnsubscribed(%struct.TYPE_5__* %35, i32* null)
  br label %37

37:                                               ; preds = %34, %31, %28
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @dictReleaseIterator(i32* %38)
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32* @dictGetKey(i32*) #1

declare dso_local i64 @pubsubUnsubscribeChannel(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @addReplyPubsubUnsubscribed(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
