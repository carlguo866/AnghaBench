; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CcEnableVLan.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CcEnableVLan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"EnableVLan\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CcEnableVLan(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %11
  %17 = call i32* (...) @NewPack()
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @OutRpcCreateVLan(i32* %18, i32* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @RpcCall(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @RpcIsOk(i32* %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @RpcGetError(i32* %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %16
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @FreePack(i32* %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %14
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32* @NewPack(...) #1

declare dso_local i32 @OutRpcCreateVLan(i32*, i32*) #1

declare dso_local i32* @RpcCall(i32, i8*, i32*) #1

declare dso_local i32 @RpcIsOk(i32*) #1

declare dso_local i32 @RpcGetError(i32*) #1

declare dso_local i32 @FreePack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
