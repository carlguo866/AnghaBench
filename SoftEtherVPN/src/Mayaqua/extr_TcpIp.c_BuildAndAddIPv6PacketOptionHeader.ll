; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildAndAddIPv6PacketOptionHeader.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildAndAddIPv6PacketOptionHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BuildAndAddIPv6PacketOptionHeader(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  br label %48

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = srem i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  %24 = sdiv i32 %23, 8
  %25 = add nsw i32 %24, 1
  %26 = mul nsw i32 %25, 8
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.TYPE_8__* @ZeroMalloc(i32 %28)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %9, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @Copy(%struct.TYPE_8__* %30, %struct.TYPE_8__* %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = sdiv i32 %34, 8
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @WriteBuf(i32* %42, %struct.TYPE_8__* %43, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = call i32 @Free(%struct.TYPE_8__* %46)
  br label %48

48:                                               ; preds = %27, %16
  ret void
}

declare dso_local %struct.TYPE_8__* @ZeroMalloc(i32) #1

declare dso_local i32 @Copy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @WriteBuf(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @Free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
