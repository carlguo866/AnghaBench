; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3SearchArpTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3SearchArpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @L3SearchArpTable(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = icmp eq %struct.TYPE_8__* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %26

17:                                               ; preds = %13
  %18 = call i32 @Zero(%struct.TYPE_9__* %7, i32 4)
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_9__* @Search(i32 %23, %struct.TYPE_9__* %7)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %3, align 8
  br label %26

26:                                               ; preds = %17, %16
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %27
}

declare dso_local i32 @Zero(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_9__* @Search(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
