; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_enum_hotkeys.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-hotkey.c_enum_hotkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }

@obs = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i8*, i64, i32*)*, i8*)* @enum_hotkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enum_hotkeys(i32 (i8*, i64, i32*)* %0, i8* %1) #0 {
  %3 = alloca i32 (i8*, i64, i32*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32 (i8*, i64, i32*)* %0, i32 (i8*, i64, i32*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @obs, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %33, %2
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i32 (i8*, i64, i32*)*, i32 (i8*, i64, i32*)** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 %23(i8* %24, i64 %25, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %36

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %18

36:                                               ; preds = %31, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
