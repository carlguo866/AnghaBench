; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NiLoadConfig.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Nat.c_NiLoadConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"VirtualHost\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"HashedPassword\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"AdminPort\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Online\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"AdminCert\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"AdminKey\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NiLoadConfig(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %64

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @CfgGetFolder(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %64

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CfgGetByte(i32* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 4)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @CfgGetInt(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @CfgGetBool(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @CfgGetBuf(i32* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %20
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @BufToX(i32* %39, i32 0)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @FreeBuf(i32* %43)
  br label %45

45:                                               ; preds = %38, %20
  %46 = load i32*, i32** %5, align 8
  %47 = call i32* @CfgGetBuf(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @BufToK(i32* %51, i32 1, i32 0, i32* null)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @FreeBuf(i32* %55)
  br label %57

57:                                               ; preds = %50, %45
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @NiLoadVhOption(%struct.TYPE_5__* %58, i32* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @NiLoadClientData(%struct.TYPE_5__* %61, i32* %62)
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %19, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32* @CfgGetFolder(i32*, i8*) #1

declare dso_local i32 @CfgGetByte(i32*, i8*, i32, i32) #1

declare dso_local i32 @CfgGetInt(i32*, i8*) #1

declare dso_local i32 @CfgGetBool(i32*, i8*) #1

declare dso_local i32* @CfgGetBuf(i32*, i8*) #1

declare dso_local i32 @BufToX(i32*, i32) #1

declare dso_local i32 @FreeBuf(i32*) #1

declare dso_local i32 @BufToK(i32*, i32, i32, i32*) #1

declare dso_local i32 @NiLoadVhOption(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @NiLoadClientData(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
