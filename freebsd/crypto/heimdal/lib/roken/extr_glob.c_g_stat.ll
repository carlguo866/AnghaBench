; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_g_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_g_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_3__ = type { i32, i32 (i8*, %struct.stat*)* }

@MaxPathLen = common dso_local global i32 0, align 4
@GLOB_ALTDIRFUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.stat*, %struct.TYPE_3__*)* @g_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_stat(i32* %0, %struct.stat* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %11 = load i32, i32* @MaxPathLen, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @g_Ctoc(i32* %15, i8* %14)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GLOB_ALTDIRFUNC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32 (i8*, %struct.stat*)*, i32 (i8*, %struct.stat*)** %25, align 8
  %27 = load %struct.stat*, %struct.stat** %6, align 8
  %28 = call i32 %26(i8* %14, %struct.stat* %27)
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load %struct.stat*, %struct.stat** %6, align 8
  %31 = call i32 @stat(i8* %14, %struct.stat* %30)
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %33)
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_Ctoc(i32*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
