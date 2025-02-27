; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_getAllClientsInfoString.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_getAllClientsInfoString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@client = common dso_local global i32 0, align 4
@SDS_NOINIT = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getAllClientsInfoString(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @client, align 4
  %7 = load i32, i32* @client, align 4
  %8 = mul nsw i32 %6, %7
  %9 = load i32, i32* @SDS_NOINIT, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %11 = call i32 @listLength(i32 %10)
  %12 = mul nsw i32 200, %11
  %13 = call i32 @sdsnewlen(i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @sdsclear(i32 %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %17 = call i32 @listRewind(i32 %16, i32* %4)
  br label %18

18:                                               ; preds = %32, %31, %1
  %19 = call i32* @listNext(i32* %4)
  store i32* %19, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @listNodeValue(i32* %22)
  store i32 %23, i32* @client, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* @client, align 4
  %28 = call i32 @getClientType(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %18

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @client, align 4
  %35 = call i32 @catClientInfoString(i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @sdscatlen(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %37, i32* %5, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @sdsnewlen(i32, i32) #1

declare dso_local i32 @listLength(i32) #1

declare dso_local i32 @sdsclear(i32) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local i32 @listNodeValue(i32*) #1

declare dso_local i32 @getClientType(i32) #1

declare dso_local i32 @catClientInfoString(i32, i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
