; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_DecryptPassword.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_DecryptPassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"EncryptPassword\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @DecryptPassword(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i8* @CopyStr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** %2, align 8
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i8* @ZeroMalloc(i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32* @NewCrypt(i8* %17, i32 8)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @Encrypt(i32* %19, i8* %20, i32 %23, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @FreeCrypt(i32* %28)
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %4, align 8
  store i8* %36, i8** %2, align 8
  br label %37

37:                                               ; preds = %11, %9
  %38 = load i8*, i8** %2, align 8
  ret i8* %38
}

declare dso_local i8* @CopyStr(i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32* @NewCrypt(i8*, i32) #1

declare dso_local i32 @Encrypt(i32*, i8*, i32, i32) #1

declare dso_local i32 @FreeCrypt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
