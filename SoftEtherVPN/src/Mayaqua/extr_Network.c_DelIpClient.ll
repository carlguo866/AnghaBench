; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_DelIpClient.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_DelIpClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@ip_clients = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DelIpClient(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %33

7:                                                ; preds = %1
  %8 = load i32, i32* @ip_clients, align 4
  %9 = call i32 @LockList(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call %struct.TYPE_5__* @SearchIpClient(i32* %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %7
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i32, i32* @ip_clients, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = call i32 @Delete(i32 %24, %struct.TYPE_5__* %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = call i32 @Free(%struct.TYPE_5__* %27)
  br label %29

29:                                               ; preds = %23, %14
  br label %30

30:                                               ; preds = %29, %7
  %31 = load i32, i32* @ip_clients, align 4
  %32 = call i32 @UnlockList(i32 %31)
  br label %33

33:                                               ; preds = %30, %6
  ret void
}

declare dso_local i32 @LockList(i32) #1

declare dso_local %struct.TYPE_5__* @SearchIpClient(i32*) #1

declare dso_local i32 @Delete(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @Free(%struct.TYPE_5__*) #1

declare dso_local i32 @UnlockList(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
