; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Cedar.c_SearchNoSslList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Cedar.c_SearchNoSslList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @SearchNoSslList(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = icmp eq %struct.TYPE_9__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %28

14:                                               ; preds = %10
  %15 = call i32 @Zero(%struct.TYPE_8__* %7, i32 4)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @Copy(i32* %16, i32* %17, i32 4)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_8__* @Search(i32 %21, %struct.TYPE_8__* %7)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %6, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %28

26:                                               ; preds = %14
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %3, align 8
  br label %28

28:                                               ; preds = %26, %25, %13
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %29
}

declare dso_local i32 @Zero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @Search(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
