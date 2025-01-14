; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_InRpcSecureSign.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_InRpcSecureSign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"SecurePublicCertName\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"SecurePrivateKeyName\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ClientCert\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Signature\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"UseSecureDeviceId\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"BitmapId\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InRpcSecureSign(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  br label %46

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @Zero(%struct.TYPE_4__* %12, i32 40)
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @PackGetStr(i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17, i32 4)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PackGetStr(i32* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 4)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @PackGetX(i32* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PackGetData2(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 4)
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PackGetData2(i32* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32 4)
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @PackGetInt(i32* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i8* @PackGetInt(i32* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PackGetStr(i32*, i8*, i32, i32) #1

declare dso_local i32 @PackGetX(i32*, i8*) #1

declare dso_local i32 @PackGetData2(i32*, i8*, i32, i32) #1

declare dso_local i8* @PackGetInt(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
