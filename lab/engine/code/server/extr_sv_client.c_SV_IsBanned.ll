; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_IsBanned.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_IsBanned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@serverBansCount = common dso_local global i32 0, align 4
@serverBans = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64)* @SV_IsBanned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SV_IsBanned(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* @qtrue, align 8
  %13 = call i64 @SV_IsBanned(i32* %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i64, i64* @qfalse, align 8
  store i64 %16, i64* %3, align 8
  br label %53

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %48, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @serverBansCount, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @serverBans, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %7, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %23
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @NET_CompareBaseAdrMask(i32 %36, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i64, i64* @qtrue, align 8
  store i64 %45, i64* %3, align 8
  br label %53

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %19

51:                                               ; preds = %19
  %52 = load i64, i64* @qfalse, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %51, %44, %15
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i64 @NET_CompareBaseAdrMask(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
