; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_CompareIpClientList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_CompareIpClientList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CompareIpClientList(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %33

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__**
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__**
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %7, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %22 = icmp eq %struct.TYPE_2__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %25 = icmp eq %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %14
  store i32 0, i32* %3, align 4
  br label %33

27:                                               ; preds = %23
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @CmpIpAddr(i32* %29, i32* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %26, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @CmpIpAddr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
