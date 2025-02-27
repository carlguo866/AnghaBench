; ModuleID = '/home/carl/AnghaBench/disque/src/extr_anet.c_anetCreateSocket.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_anet.c_anetCreateSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"creating socket: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@ANET_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @anetCreateSocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anetCreateSocket(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 @anetSetError(i8* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @ANET_ERR, align 4
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @anetSetReuseAddr(i8* %18, i32 %19)
  %21 = load i32, i32* @ANET_ERR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @close(i32 %24)
  %26 = load i32, i32* @ANET_ERR, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %23, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @anetSetError(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @anetSetReuseAddr(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
