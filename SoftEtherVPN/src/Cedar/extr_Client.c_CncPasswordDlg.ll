; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CncPasswordDlg.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CncPasswordDlg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"password_dialog\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Username\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Password\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ServerName\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"RetryIntervalSec\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ProxyServer\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"AdminMode\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"ShowNoSavePassword\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"NoSavePassword\00", align 1
@CncConnectErrorDlgHaltThread = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CncPasswordDlg(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %151

17:                                               ; preds = %13
  %18 = call i32* (...) @CncConnect()
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Wait(i32 %24, i32 %27)
  store i32 1, i32* %3, align 4
  br label %151

29:                                               ; preds = %17
  %30 = call i32* (...) @NewPack()
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @PackAddStr(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PackAddInt(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PackAddStr(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PackAddStr(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PackAddStr(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PackAddInt(i32* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PackAddBool(i32* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 7
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PackAddBool(i32* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @PackAddBool(i32* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 5
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PackAddBool(i32* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @SendPack(i32* %78, i32* %79)
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @FreePack(i32* %81)
  %83 = call %struct.TYPE_11__* @ZeroMalloc(i32 24)
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %8, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %86, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  store i32* %87, i32** %89, align 8
  %90 = call i32 (...) @NewEvent()
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @CncConnectErrorDlgHaltThread, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %95 = call i32* @NewThread(i32 %93, %struct.TYPE_11__* %94)
  store i32* %95, i32** %9, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = call i32* @RecvPack(i32* %96)
  store i32* %97, i32** %7, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %128

100:                                              ; preds = %29
  %101 = load i32*, i32** %7, align 8
  %102 = call i8* @PackGetBool(i32* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %10, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call i8* @PackGetBool(i32* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call i8* @PackGetBool(i32* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @PackGetInt(i32* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @PackGetStr(i32* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %119, i32 8)
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @PackGetStr(i32* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %124, i32 8)
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @FreePack(i32* %126)
  br label %128

128:                                              ; preds = %100, %29
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @Set(i32 %133)
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* @INFINITE, align 4
  %137 = call i32 @WaitThread(i32* %135, i32 %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ReleaseEvent(i32 %140)
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %143 = call i32 @Free(%struct.TYPE_11__* %142)
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @ReleaseThread(i32* %144)
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 @Disconnect(i32* %146)
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @ReleaseSock(i32* %148)
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %128, %21, %16
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32* @CncConnect(...) #1

declare dso_local i32 @Wait(i32, i32) #1

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @PackAddStr(i32*, i8*, i8*) #1

declare dso_local i32 @PackAddInt(i32*, i8*, i32) #1

declare dso_local i32 @PackAddBool(i32*, i8*, i8*) #1

declare dso_local i32 @SendPack(i32*, i32*) #1

declare dso_local i32 @FreePack(i32*) #1

declare dso_local %struct.TYPE_11__* @ZeroMalloc(i32) #1

declare dso_local i32 @NewEvent(...) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_11__*) #1

declare dso_local i32* @RecvPack(i32*) #1

declare dso_local i8* @PackGetBool(i32*, i8*) #1

declare dso_local i32 @PackGetInt(i32*, i8*) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i8*, i32) #1

declare dso_local i32 @Set(i32) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @ReleaseEvent(i32) #1

declare dso_local i32 @Free(%struct.TYPE_11__*) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i32 @Disconnect(i32*) #1

declare dso_local i32 @ReleaseSock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
