; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_misc.c_strdupout.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_misc.c_strdupout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

@archsw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strdupout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @strlenout(i32 %5)
  %7 = add nsw i64 %6, 1
  %8 = call i8* @malloc(i64 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %4, align 8
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @archsw, i32 0, i32 0), align 8
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %2, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 %11(i32 %12, i8* %14, i32 1)
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %25

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  br label %10

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlenout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
